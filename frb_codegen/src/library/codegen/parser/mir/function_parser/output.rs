use crate::codegen::ir::mir::ty::primitive::MirTypePrimitive;
use crate::codegen::ir::mir::ty::MirType;
use crate::codegen::parser::mir::function_parser::{FunctionParser, FunctionPartialInfo};
use crate::codegen::parser::mir::type_parser::result::parse_type_maybe_result;
use crate::codegen::parser::mir::type_parser::TypeParserParsingContext;
use syn::*;

impl<'a, 'b> FunctionParser<'a, 'b> {
    pub(super) fn parse_fn_output(
        &mut self,
        sig: &Signature,
        context: &TypeParserParsingContext,
    ) -> anyhow::Result<FunctionPartialInfo> {
        Ok(match &sig.output {
            ReturnType::Type(_, ty) => {
                remove_primitive_unit(self.parse_fn_output_type(ty, context)?)
            }
            ReturnType::Default => Default::default(),
        })
    }

    #[allow(clippy::single_match)] // deliberate do so to ensure style consistency
    fn parse_fn_output_type(
        &mut self,
        ty: &Type,
        context: &TypeParserParsingContext,
    ) -> anyhow::Result<FunctionPartialInfo> {
        let mir = self.type_parser.parse_type(ty, context)?;
        let info = parse_type_maybe_result(&mir, self.type_parser, context)?;
        Ok(FunctionPartialInfo {
            ok_output: Some(info.ok_output),
            error_output: info.error_output,
            ..Default::default()
        })
    }
}

// Convert primitive Unit type -> None
fn remove_primitive_unit(info: FunctionPartialInfo) -> FunctionPartialInfo {
    let ok_output = if info.ok_output == Some(MirType::Primitive(MirTypePrimitive::Unit)) {
        None
    } else {
        info.ok_output
    };

    FunctionPartialInfo { ok_output, ..info }
}
