use crate::codegen::ir::mir::func::MirFunc;
use crate::utils::namespace::NamespacedName;
use itertools::Itertools;

crate::mir! {
pub struct IrSkip {
    pub name: NamespacedName,
    pub reason: IrSkipReason,
}

#[derive(Copy, PartialOrd, Ord)]
pub(crate) enum IrSkipReason {
    IgnoreBecauseFunctionNotPub,
    IgnoreBecauseFunctionGeneric,
    IgnoreBecauseTypeNotUsedByPub,
    IgnoreBecauseExplicitAttribute,
    IgnoreBecauseType,
    IgnoreBecauseParseMethodOwnerTy,
    IgnoreBecauseParseOwnerCannotFindTrait,
    IgnoreBecauseNotAllowedOwner,
    IgnoreBecauseOwnerTyShouldIgnore,
    IgnoreBecauseSelfTypeNotAllowed,
    IgnoreSilently,
    Err,
}
}

impl IrSkipReason {
    pub(crate) fn explanation_prefix(&self) -> Option<String> {
        Some(match self {
            Self::IgnoreBecauseFunctionNotPub => {
                "These functions are ignored because they are not marked as `pub`".to_owned()
            }
            Self::IgnoreBecauseFunctionGeneric => {
                "These functions are ignored because they have generic arguments".to_owned()
            }
            Self::IgnoreBecauseTypeNotUsedByPub => {
                "These types are ignored because they are not used by any `pub` functions".to_owned()
            }
            Self::IgnoreSilently => return None,
            Self::Err => {
                "These functions have error during generation (see debug logs or enable `stop_on_error: true` for more details)".to_owned()
            }
            _ => format!("These functions are ignored (category: {:?})", self)
        })
    }
}

pub(crate) enum IrValueOrSkip<T> {
    Value(T),
    Skip(IrSkip),
}

impl<T> IrValueOrSkip<T> {
    pub(crate) fn value(self) -> T {
        match self {
            Self::Value(inner) => inner,
            _ => unreachable!(),
        }
    }

    pub(crate) fn skip(self) -> IrSkip {
        match self {
            Self::Skip(inner) => inner,
            _ => unreachable!(),
        }
    }

    pub(crate) fn split(items: Vec<IrValueOrSkip<T>>) -> (Vec<T>, Vec<IrSkip>) {
        let (values, skips): (Vec<_>, Vec<_>) =
            (items.into_iter()).partition(|item| matches!(item, IrValueOrSkip::Value(_)));
        let values = values.into_iter().map(|x| x.value()).collect_vec();
        let skips = skips.into_iter().map(|x| x.skip()).collect_vec();
        (values, skips)
    }
}
