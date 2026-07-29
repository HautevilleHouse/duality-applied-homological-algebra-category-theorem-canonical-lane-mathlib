import Mathlib.CategoryTheory.Yoneda
import Mathlib.CategoryTheory.Functor.Basic
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

open CategoryTheory

structure YonedaPackage (C : Type u) [Category.{v} C] where
  yonedaEmbedding : C ⥤ (Cᵒᵖ ⥤ Type v)
  fullyFaithful : yonedaEmbedding.Full ∧ yonedaEmbedding.Faithful
  yonedaLemma : ∀ (X : C) (F : Cᵒᵖ ⥤ Type v), (yonedaEmbedding.obj X ⟹ F) ≃ F.obj (Opposite.op X)

def YonedaClosed {C : Type u} [Category.{v} C] (Y : YonedaPackage C) : Prop :=
  Y.fullyFaithful.1 ∧ Y.fullyFaithful.2 ∧ Nonempty (Y.yonedaLemma)

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse