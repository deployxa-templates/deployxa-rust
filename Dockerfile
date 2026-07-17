FROM rust:1.78-slim AS builder
WORKDIR /app
COPY Cargo.toml ./
# Create dummy main to compile deps
RUN mkdir src && echo "fn main() {}" > src/main.rs && cargo build --release && rm -rf src
COPY . .
RUN touch src/main.rs && cargo build --release

FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/target/release/deployxa-rust .
EXPOSE 8080
ENV PORT=8080
CMD ["./deployxa-rust"]
