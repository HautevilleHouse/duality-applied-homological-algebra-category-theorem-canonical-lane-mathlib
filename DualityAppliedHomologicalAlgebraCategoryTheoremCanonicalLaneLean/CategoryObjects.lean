import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  identity : carrier → carrier
  composition : (carrier → carrier) → (carrier → carrier) → (carrier → carrier)
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure Morphism (A B : CategoryObject) where
  map : A.carrier → B.carrier
  respectsComposition : Prop

structure AdmittedCategoryObject where
  obj : CategoryObject
  admitsLimits : Prop
  admitsColimits : Prop
  conclusion : admitsLimits ∧ admitsColimits

structure CategoryAdmittedObject where
  object : AdmittedCategoryObject

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.object.conclusion

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse