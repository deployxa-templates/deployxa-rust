use axum::{routing::get, Json, Router};
use serde::Serialize;
use std::env;
use std::net::SocketAddr;
use std::time::SystemTime;

#[derive(Serialize)]
struct MessageResponse {
    message: String,
}

#[derive(Serialize)]
struct HealthResponse {
    status: String,
    timestamp: u64,
}

#[tokio::main]
async fn main() {
    let port = env::var("PORT").unwrap_or_else(|_| "8080".to_string());
    let addr: SocketAddr = format!("0.0.0.0:{}", port).parse().unwrap();

    let app = Router::new()
        .route("/", get(|| async { Json(MessageResponse { message: "Deployxa Rust Template".to_string() }) }))
        .route("/health", get(|| async {
            let now = SystemTime::now().duration_since(SystemTime::UNIX_EPOCH).unwrap().as_secs();
            Json(HealthResponse {
                status: "healthy".to_string(),
                timestamp: now,
            })
        }));

    println!("Listening on http://{}", addr);
    let listener = tokio::net::TcpListener::bind(addr).await.unwrap();
    axum::serve(listener, app).await.unwrap();
}
