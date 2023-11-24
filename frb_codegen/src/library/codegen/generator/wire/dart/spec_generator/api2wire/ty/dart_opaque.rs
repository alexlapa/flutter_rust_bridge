use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::misc::target::Target;
use crate::codegen::generator::wire::dart::spec_generator::api2wire::ty::WireDartGeneratorApi2wireTrait;
use crate::codegen::generator::wire::dart::spec_generator::base::*;

impl<'a> WireDartGeneratorApi2wireTrait for DartOpaqueWireDartGenerator<'a> {
    fn api2wire_body(&self) -> Acc<Option<String>> {
        Acc {
            io: Some(
                "
                final ptr = wire.new_DartOpaque();
                _api_fill_to_wire_DartOpaque(raw, ptr);
                return ptr;
                "
                .to_owned(),
            ),
            wasm: Some("return[raw, dropManager.dropPort];".to_owned()),
            ..Default::default()
        }
    }

    fn api_fill_to_wire_body(&self) -> Option<String> {
        Some(
            "wireObj.handle = generalizedFrbRustBinding.newDartOpaque(apiObj);
            wireObj.port = dropPortManager.dropPort;"
                .to_owned(),
        )
    }

    fn dart_wire_type(&self, target: Target) -> String {
        match target {
            Target::Io => "wire_DartOpaque",
            Target::Wasm => "Object",
        }
        .to_owned()
    }
}
