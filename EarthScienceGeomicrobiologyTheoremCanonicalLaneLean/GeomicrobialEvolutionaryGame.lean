import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeomicrobialEvolutionaryGame where
  strategies : Type u
  payoffMatrix : (s : strategies) -> (t : strategies) -> ℝ
  replicatorEquation : strategies -> ℝ -> ℝ
  equilibriumPoint : strategies -> Prop

structure GeomicrobialEvolutionaryGameEvidence (G : GeomicrobialEvolutionaryGame) where
  payoffMatrixBounded : ∃ M : ℝ, ∀ s t : G.strategies, |G.payoffMatrix s t| ≤ M
  replicatorEquationSmooth : ∀ s : G.strategies, Differentiable ℝ (G.replicatorEquation s)
  equilibriumExists : ∃ s : G.strategies, G.equilibriumPoint s

def GeomicrobialEvolutionaryGameClosed (G : GeomicrobialEvolutionaryGame) : Prop :=
  (∃ M : ℝ, ∀ s t : G.strategies, |G.payoffMatrix s t| ≤ M) ∧
  (∀ s : G.strategies, Differentiable ℝ (G.replicatorEquation s)) ∧
  (∃ s : G.strategies, G.equilibriumPoint s)

theorem geomicrobial_evolutionary_game_closed_from_evidence
    (G : GeomicrobialEvolutionaryGame) (E : GeomicrobialEvolutionaryGameEvidence G) :
    GeomicrobialEvolutionaryGameClosed G := by
  exact And.intro E.payoffMatrixBounded
    (And.intro E.replicatorEquationSmooth E.equilibriumExists)

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse