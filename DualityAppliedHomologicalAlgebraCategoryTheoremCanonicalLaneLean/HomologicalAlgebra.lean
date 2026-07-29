import Mathlib.Algebra.Homology.ShortComplex.Basic
import Mathlib.Algebra.Homology.SpectralObject.Basic
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean

open CategoryTheory

structure HomologicalAlgebraPackage (C : Type u) [Category.{v} C] [Abelian C] where
  shortExactSequence : Type (max u v)
  snakeLemma : Prop
  spectralSequence : Prop
  derivedFunctor : Prop

def HomologicalClosed {C : Type u} [Category.{v} C] [Abelian C] (H : HomologicalAlgebraPackage C) : Prop :=
  H.snakeLemma ∧ H.spectralSequence ∧ H.derivedFunctor

end DualityAppliedHomologicalAlgebraCategoryTheoremCanonicalLaneLean
end HautevilleHouse