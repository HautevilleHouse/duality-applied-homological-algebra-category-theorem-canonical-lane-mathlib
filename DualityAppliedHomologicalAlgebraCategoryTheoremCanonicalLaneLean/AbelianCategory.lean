import Mathlib.CategoryTheory.Abelian.Basic
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

open CategoryTheory

structure AbelianCategoryPackage (A : Type u) [Category.{v} A] where
  isAbelian : Abelian A
  exactSequenceProperties : True
  homologicalLemma : True

def AbelianClosed {A : Type u} [Category.{v} A] (P : AbelianCategoryPackage A) : Prop :=
  Nonempty (P.isAbelian)

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse