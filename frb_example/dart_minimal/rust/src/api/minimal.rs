use flutter_rust_bridge::frb;

#[frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}

pub fn minimal_adder(a: i32, b: i32) -> i32 {
    a + b
}

// ----------------------------------------------- tests -------------------------------------------------

/// Lt := Lifetime Testers
/// Try *NOT* to impl Clone for these types in order to ensure there are no extra clones
#[frb(opaque)]
#[derive(Debug)]
pub struct LtOwnedStructTwinNormal {
    sub: LtOwnedSubStructTwinNormal,
}

#[frb(opaque)]
#[derive(Debug)]
pub struct LtOwnedSubStructTwinNormal {
    value: String,
}

#[frb(opaque)]
#[derive(Debug)]
pub struct LtTypeWithLifetimeTwinNormal<'a> {
    field: &'a LtOwnedStructTwinNormal,
}

#[frb(opaque)]
#[derive(Debug)]
pub struct LtDoubleTypeWithLifetimeTwinNormal<'a> {
    field: &'a LtTypeWithLifetimeTwinNormal<'a>,
}

#[allow(clippy::needless_lifetimes)]
impl LtOwnedStructTwinNormal {
    pub fn compute_type_with_lifetime_twin_normal<'a>(
        &'a self,
    ) -> LtTypeWithLifetimeTwinNormal<'a> {
        LtTypeWithLifetimeTwinNormal { field: self }
    }

    pub fn compute_sub_struct_twin_normal<'a>(&'a self) -> &'a LtOwnedSubStructTwinNormal {
        &self.sub
    }
}

impl LtOwnedSubStructTwinNormal {
    pub fn greet_borrow_self_twin_normal(&self) -> String {
        self.value.clone()
    }

    pub fn greet_borrow_mut_self_twin_normal(&mut self) -> String {
        self.value.clone()
    }
}

#[allow(clippy::needless_lifetimes)]
impl LtTypeWithLifetimeTwinNormal<'_> {
    pub fn greet_borrow_self_twin_normal(&self) -> String {
        self.field.sub.value.clone()
    }

    pub fn greet_borrow_mut_self_twin_normal(&mut self) -> String {
        self.field.sub.value.clone()
    }

    pub fn compute_double_type_with_lifetime_twin_normal<'a>(
        &'a self,
    ) -> LtDoubleTypeWithLifetimeTwinNormal<'a> {
        LtDoubleTypeWithLifetimeTwinNormal { field: self }
    }
}

impl LtDoubleTypeWithLifetimeTwinNormal<'_> {
    pub fn greet_borrow_self_twin_normal(&self) -> String {
        self.field.field.sub.value.clone()
    }

    pub fn greet_borrow_mut_self_twin_normal(&mut self) -> String {
        self.field.field.sub.value.clone()
    }
}
