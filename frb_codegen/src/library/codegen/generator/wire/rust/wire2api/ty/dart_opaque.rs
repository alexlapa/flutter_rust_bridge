use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::misc::Target;
use crate::codegen::generator::wire::rust::base::*;
use crate::codegen::generator::wire::rust::wire2api::extern_func::CodeWithExternFunc;
use crate::codegen::generator::wire::rust::wire2api::impl_new_with_nullptr::generate_impl_new_with_nullptr_code_block;
use crate::codegen::generator::wire::rust::wire2api::misc::generate_class_from_fields;
use crate::codegen::generator::wire::rust::wire2api::ty::WireRustGeneratorWire2apiTrait;
use crate::library::codegen::generator::wire::rust::info::WireRustGeneratorInfoTrait;
impl<'a> WireRustGeneratorWire2apiTrait for DartOpaqueWireRustGenerator<'a> {
    fn generate_wire2api_class(&self) -> Option<String> {
        Some(generate_class_from_fields(
            self.ir.clone(),
            &self.context,
            &vec!["port: i64".to_owned(), "handle: usize".to_owned()],
        ))
    }

    fn generate_impl_wire2api_body(&self) -> Acc<Option<String>> {
        Acc {
            io: Some("unsafe{DartOpaque::new(self.handle as _, self.port)}".to_owned()),
            wasm: Some(
                "let arr = self.dyn_into::<JsArray>().unwrap();
                unsafe{DartOpaque::new(arr.get(0), arr.get(1))}"
                    .to_owned(),
            ),
            ..Default::default()
        }
    }

    fn generate_impl_new_with_nullptr(&self) -> Option<CodeWithExternFunc> {
        Some(CodeWithExternFunc::code(
            generate_impl_new_with_nullptr_code_block(
                self.ir.clone(),
                &self.context,
                "Self { port: 0, handle: 0 }",
                false,
            ),
        ))
    }

    fn generate_allocate_funcs(&self) -> Acc<Option<CodeWithExternFunc>> {
        let rust_wire = self.ir.rust_wire_type(crate::target::Target::Io);

        Acc {
            io: Some(collector.generate(
                &format!("new_{}", self.ir.safe_ident()),
                NO_PARAMS,
                Some(&format!(
                    "{}{}",
                    self.ir.rust_wire_modifier(crate::target::Target::Io),
                    rust_wire
                )),
                &format!("{rust_wire}::new_with_null_ptr()"),
                crate::target::Target::Io,
            )),
            ..Default::default()
        }
    }
}
