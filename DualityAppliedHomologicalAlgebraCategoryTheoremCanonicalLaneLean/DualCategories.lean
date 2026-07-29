import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure DualCategory where
  object : Type u
  morphism : object → object → Type v
  identity : (X : object) → morphism X X
  composition : {X Y Z : object} → morphism X Y → morphism Y Z → morphism X Z
  associativity : Prop
  identityLaws : Prop
  dualObject : object → object
  dualMorphism : {X Y : object} → morphism X Y → morphism (dualObject Y) (dualObject X)
  dualInvolutive : (X : object) → dualObject (dualObject X) = X
  associativityTerm : associativity
  identityLawsTerm : identityLaws

structure DualCategoryEvidence (C : DualCategory) where
  associativityClosed : C.associativity
  identityLawsClosed : C.identityLaws
  dualInvolutiveClosed : (X : C.object) → C.dualObject (C.dualObject X) = X

def DualCategoryClosed (C : DualCategory) : Prop :=
  C.associativity ∧ C.identityLaws ∧ (∀ X : C.object, C.dualObject (C.dualObject X) = X)

theorem dual_category_closed_from_evidence (C : DualCategory) (E : DualCategoryEvidence C) : DualCategoryClosed C := by
  exact And.intro E.associativityClosed (And.intro E.identityLawsClosed E.dualInvolutiveClosed)

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse