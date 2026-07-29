import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure DualitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualityAdmittedObject where
  category : DualitySpace
  dualCategory : DualitySpace
  adjointPair : Prop
  yonedaEmbedding : Prop
  conclusion : adjointPair ∧ yonedaEmbedding

structure DualityEndgameState where
  object : DualityAdmittedObject

def CategoryWitnessClosed (O : DualityAdmittedObject) : Prop :=
  O.adjointPair ∧ O.yonedaEmbedding

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse