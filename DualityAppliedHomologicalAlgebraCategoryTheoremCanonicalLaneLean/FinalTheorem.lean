import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

def ConstrainedDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_endgame (A : AdmissibleClass) :
    ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse