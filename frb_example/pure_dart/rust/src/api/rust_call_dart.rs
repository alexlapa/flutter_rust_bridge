// FRB_INTERNAL_GENERATOR: {"forbiddenDuplicatorModes": ["sync", "rustAsync"]}

use futures::future::BoxFuture;
use std::future::Future;

// TODO
struct DartFn<F> {
    inner: F,
}

// https://github.com/rust-lang/rust/issues/29625#issuecomment-1692602873
impl<F> std::ops::Deref for DartFn<F> {
    type Target = F;

    fn deref(&self) -> &Self::Target {
        &self.inner
    }
}

pub async fn rust_call_dart_simple(callback: DartFn<fn() -> BoxFuture<()>>) {
    println!("rust_call_dart_simple before");
    callback().await;
    println!("rust_call_dart_simple after");
}
