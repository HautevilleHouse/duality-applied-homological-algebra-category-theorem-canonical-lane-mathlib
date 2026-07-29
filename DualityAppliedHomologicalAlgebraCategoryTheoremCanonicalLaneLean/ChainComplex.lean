import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

structure ChainComplex (A : Type u) [CategoryTheory.Category.{v} A] where
  objects : ℕ → A
  differentials : (n : ℕ) → objects (n+1) ⟶ objects n
  differentialComposition : (n : ℕ) → differentials (n+1) ≫ differentials n = 0

structure ChainComplexMorphism {A : Type u} [CategoryTheory.Category.{v} A] (C D : ChainComplex A) where
  components : (n : ℕ) → C.objects n ⟶ D.objects n
  commutes : (n : ℕ) → components (n+1) ≫ D.differentials n = C.differentials n ≫ components n

theorem chain_complex_morphism_identity {A : Type u} [CategoryTheory.Category.{v} A] (C : ChainComplex A) :
  ChainComplexMorphism C C := by
  refine { components := λ n => 𝟙 (C.objects n), commutes := ?_ }
  intro n
  simp

theorem chain_complex_morphism_composition {A : Type u} [CategoryTheory.Category.{v} A] {C D E : ChainComplex A}
  (f : ChainComplexMorphism C D) (g : ChainComplexMorphism D E) : ChainComplexMorphism C E := by
  refine { components := λ n => f.components n ≫ g.components n, commutes := ?_ }
  intro n
  calc
    (f.components (n+1) ≫ g.components (n+1)) ≫ E.differentials n
        = f.components (n+1) ≫ (g.components (n+1) ≫ E.differentials n) := by
      rfl
    _ = f.components (n+1) ≫ (D.differentials n ≫ g.components n) := by
      rw [g.commutes n]
    _ = (f.components (n+1) ≫ D.differentials n) ≫ g.components n := by
      rfl
    _ = (C.differentials n ≫ f.components n) ≫ g.components n := by
      rw [f.commutes n]
    _ = C.differentials n ≫ (f.components n ≫ g.components n) := by
      rfl

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse