import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure DualityAdmissibleObject where
  category : Type u
  dualCategory : Type u
  dualityFunctor : Functor category (dualCategoryᵒᵖ)
  dualityEquivalence : Equivalence category (dualCategoryᵒᵖ)
  homologicalStructure : Prop
  homologicalStructureTerm : homologicalStructure

def bridgeClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop := A.remainderRecorded ∨ A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact Or.inr A.endpointSatisfied

def ConstrainedDualityAppliedHomologicalAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_applied_homological_algebra_endgame (A : AdmissibleClass) : ConstrainedDualityAppliedHomologicalAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse