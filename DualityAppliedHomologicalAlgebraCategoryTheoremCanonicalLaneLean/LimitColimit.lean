import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure LimitColimitPackage where
  limitExists : Prop
  colimitExists : Prop
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop
  limitColimitClosed : limitExists ∧ colimitExists ∧ limitUniversalProperty ∧ colimitUniversalProperty

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitUniversalPropertyClosed : L.colimitUniversalProperty

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitColimitClosed

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage)
    (E : LimitColimitEvidence L) : LimitColimitClosed L := by
  exact And.intro E.limitExistsClosed
    (And.intro E.colimitExistsClosed
      (And.intro E.limitUniversalPropertyClosed E.colimitUniversalPropertyClosed))

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse