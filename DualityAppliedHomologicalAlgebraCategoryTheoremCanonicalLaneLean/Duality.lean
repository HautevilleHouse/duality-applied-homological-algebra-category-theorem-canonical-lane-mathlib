import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure DualityPair (A B : Type u) [CategoryTheory.Category.{v} A] [CategoryTheory.Category.{v} B] where
  leftAdjoint : CategoryTheory.Functor A B
  rightAdjoint : CategoryTheory.Functor B A
  unit : CategoryTheory.NaturalTransformation (CategoryTheory.Functor.id A) (rightAdjoint.comp leftAdjoint)
  counit : CategoryTheory.NaturalTransformation (leftAdjoint.comp rightAdjoint) (CategoryTheory.Functor.id B)
  triangleLeft : (leftAdjoint.map (unit.app ?_)) ≫ (counit.app (leftAdjoint.obj ?_)) = 𝟙 (leftAdjoint.obj ?_)
  triangleRight : (unit.app (rightAdjoint.obj ?_)) ≫ (rightAdjoint.map (counit.app ?_)) = 𝟙 (rightAdjoint.obj ?_)

structure DualizingComplex (A : Type u) [CategoryTheory.Category.{v} A] [CategoryTheory.Abelian A] where
  complex : ChainComplex A
  dualizingMorphism : CohomologyFunctor A
  isDualizing : IsDualizing complex dualizingMorphism

inductive IsDualizing {A : Type u} [CategoryTheory.Category.{v} A] [CategoryTheory.Abelian A] :
  ChainComplex A → CohomologyFunctor A → Prop where
  | mk : ∀ (C : ChainComplex A) (D : CohomologyFunctor A), Prop

theorem duality_pair_adjointness {A B : Type u} [CategoryTheory.Category.{v} A] [CategoryTheory.Category.{v} B]
  (pair : DualityPair A B) : CategoryTheory.Adjunction pair.leftAdjoint pair.rightAdjoint := by
  refine { unit := pair.unit, counit := pair.counit, left_triangle := ?_, right_triangle := ?_ }
  · exact pair.triangleLeft
  · exact pair.triangleRight

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse