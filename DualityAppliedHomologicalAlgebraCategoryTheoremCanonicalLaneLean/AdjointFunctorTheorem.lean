import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type v → Type u
  adjunctionIso : Prop
  freydAdjunctionTheorem : Prop
  adjointFunctorClosed : adjunctionIso ∧ freydAdjunctionTheorem

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionIsoClosed : A.adjunctionIso
  freydAdjunctionTheoremClosed : A.freydAdjunctionTheorem

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjointFunctorClosed

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed E.freydAdjunctionTheoremClosed

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse