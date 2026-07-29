import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Adjunction.Basic

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

open CategoryTheory

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse