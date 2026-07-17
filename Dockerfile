FROM rust:1.78-slim AS builder
WORKDIR /app
COPY Cargo.toml ./
RUN mkdir src && echo "fn main() {}" > src/main.rs && cargo build --release && rm -rf src
COPY . .
RUN touch src/main.rs && cargo build --release

FROM debian:bookworm-slim
RUN groupadd -g 1001 appgroup && useradd -r -u 1001 -g appgroup appuser
WORKDIR /app
COPY --from=builder /app/target/release/deployxa-rust .
RUN chown -R appuser:appgroup /app
USER appuser
EXPOSE 8080
ENV PORT=8080
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3   CMD debian_ch() { exec 3<>/dev/tcp/localhost/8080 && echo -e "GET /health HTTP/1.1\r\nHost: localhost\r\nConnection: close\r\n\r\n" >&3 && cat <&3 | grep -q "ok"; }; debian_ch || exit 1
CMD ["./deployxa-rust"]