import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Limits.Basic
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

open CategoryTheory

structure AdjointFunctorPackage (C D : Type u) [Category.{v} C] [Category.{v} D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  adjunction : leftAdjoint ⊣ rightAdjoint
  preservesLimits : PreservesLimits leftAdjoint
  preservesColimits : PreservesColimits rightAdjoint

def AdjointClosed {C D : Type u} [Category.{v} C] [Category.{v} D] (A : AdjointFunctorPackage C D) : Prop :=
  Nonempty (A.adjunction) ∧ A.preservesLimits ∧ A.preservesColimits

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse