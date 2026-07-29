import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure CohomologyFunctor (A : Type u) [CategoryTheory.Category.{v} A] [CategoryTheory.Abelian A] where
  chainComplex : ChainComplex A
  cohomologyGroups : (n : ℕ) → A
  connectingHomomorphism : (n : ℕ) → cohomologyGroups n ⟶ cohomologyGroups (n+1)
  exactness : (n : ℕ) → CategoryTheory.Exact (chainComplex.differentials n) (connectingHomomorphism n) (chainComplex.differentials (n+1))

structure CohomologyMorphism {A : Type u} [CategoryTheory.Category.{v} A] [CategoryTheory.Abelian A]
  (C D : CohomologyFunctor A) where
  components : (n : ℕ) → C.cohomologyGroups n ⟶ D.cohomologyGroups n
  commutes : (n : ℕ) → components n ≫ D.connectingHomomorphism n = C.connectingHomomorphism n ≫ components (n+1)

theorem cohomology_morphism_composition {A : Type u} [CategoryTheory.Category.{v} A] [CategoryTheory.Abelian A]
  {C D E : CohomologyFunctor A} (f : CohomologyMorphism C D) (g : CohomologyMorphism D E) : CohomologyMorphism C E := by
  refine { components := λ n => f.components n ≫ g.components n, commutes := ?_ }
  intro n
  calc
    (f.components n ≫ g.components n) ≫ E.connectingHomomorphism n
        = f.components n ≫ (g.components n ≫ E.connectingHomomorphism n) := by
      rfl
    _ = f.components n ≫ (D.connectingHomomorphism n ≫ g.components (n+1)) := by
      rw [g.commutes n]
    _ = (f.components n ≫ D.connectingHomomorphism n) ≫ g.components (n+1) := by
      rfl
    _ = (C.connectingHomomorphism n ≫ f.components (n+1)) ≫ g.components (n+1) := by
      rw [f.commutes n]
    _ = C.connectingHomomorphism n ≫ (f.components (n+1) ≫ g.components (n+1)) := by
      rfl

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse