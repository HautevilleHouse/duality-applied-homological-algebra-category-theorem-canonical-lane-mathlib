import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse