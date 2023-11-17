// Name "enumeration" not "enum", since the latter is a keyword

use crate::codegen::ir::comment::IrComment;
use crate::codegen::ir::ident::IrIdent;
use crate::codegen::ir::pack::IrPack;
use crate::codegen::ir::ty::structure::IrStruct;
use crate::codegen::ir::ty::{IrType, IrTypeTrait};
use convert_case::{Case, Casing};

crate::ir! {
pub struct IrTypeEnumRef {
    pub ident: IrEnumIdent,
    pub is_exception: bool,
}

pub struct IrEnumIdent(pub String);

pub struct IrEnum {
    pub name: String,
    pub wrapper_name: Option<String>,
    pub path: Vec<String>,
    pub comments: Vec<IrComment>,
    pub variants: Vec<IrVariant>,
    // TODO old: `is_struct: bool`
    pub mode: IrEnumMode,
}

#[derive(Copy)]
pub enum IrEnumMode {
    Simple,
    Complex,
}

pub struct IrVariant {
    pub name: IrIdent,
    pub wrapper_name: IrIdent,
    pub comments: Vec<IrComment>,
    pub kind: IrVariantKind,
}

pub enum IrVariantKind {
    Value,
    Struct(IrStruct),
}
}

impl IrTypeEnumRef {
    #[inline]
    pub fn get<'a>(&self, file: &'a IrPack) -> &'a IrEnum {
        &file.enum_pool[&self.ident]
    }
}

impl IrTypeTrait for IrTypeEnumRef {
    fn visit_children_types<F: FnMut(&IrType) -> bool>(&self, f: &mut F, ir_pack: &IrPack) {
        let enu = self.get(ir_pack);
        for variant in enu.variants() {
            if let IrVariantKind::Struct(st) = &variant.kind {
                st.fields
                    .iter()
                    .for_each(|field| field.ty.visit_types(f, ir_pack));
            }
        }
    }

    fn safe_ident(&self) -> String {
        self.ident.0.to_case(Case::Snake)
    }
}

impl IrEnum {
    pub fn variants(&self) -> &[IrVariant] {
        &self.variants
    }
}
