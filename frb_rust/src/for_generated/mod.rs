//! Utilities to support the auto-generated Rust code.
//! These functions are usually *not* meant to be used by humans directly.

mod cast;
mod pointer;

pub use crate::generalized_isolate::Channel;
pub use crate::handler::handler::{FfiCallMode, TaskInfo};
pub use crate::misc::manual_impl::*;
pub use crate::misc::rust_opaque::opaque_from_dart;
pub use crate::platform_types::{MessagePort, WireSyncReturn};
#[cfg(not(wasm))]
pub use allo_isolate::IntoDartExceptPrimitive;
pub use cast::*;
pub use lazy_static::lazy_static;
pub use pointer::*;
