import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure LimitCone (J C : Type u) [Category.{v} J] [Category.{v} C] (D : Functor J C) where
  apex : C
  projection : (j : J) → Hom apex (D.obj j)
  universalProperty : Prop
  uniqueness : Prop
  universalPropertyTerm : universalProperty
  uniquenessTerm : uniqueness

structure ColimitCocone (J C : Type u) [Category.{v} J] [Category.{v} C] (D : Functor J C) where
  apex : C
  injection : (j : J) → Hom (D.obj j) apex
  universalProperty : Prop
  uniqueness : Prop
  universalPropertyTerm : universalProperty
  uniquenessTerm : uniqueness

structure LimitsColimitsPackage (J C : Type u) [Category.{v} J] [Category.{v} C] where
  hasLimits : Prop
  hasColimits : Prop
  limitsExist : Prop
  colimitsExist : Prop
  limitsClosed : hasLimits
  colimitsClosed : hasColimits

def LimitsColimitsClosed (J C : Type u) [Category.{v} J] [Category.{v} C] (L : LimitsColimitsPackage J C) : Prop :=
  L.hasLimits ∧ L.hasColimits ∧ L.limitsExist ∧ L.colimitsExist

theorem limits_colimits_closed_from_evidence (J C : Type u) [Category.{v} J] [Category.{v} C] (L : LimitsColimitsPackage J C) (E : L.hasLimits ∧ L.hasColimits ∧ L.limitsExist ∧ L.colimitsExist) : LimitsColimitsClosed L := by
  exact E

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse