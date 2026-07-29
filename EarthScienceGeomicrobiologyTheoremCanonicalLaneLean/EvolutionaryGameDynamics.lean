import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure EvolutionaryGame where
  strategy : Type
  payoff : strategy → strategy → ℝ
  replicatorEquation : ℝ → ℝ

structure EvolutionaryGamePackage where
  strategySpace : Prop
  payoffMatrix : Prop
  replicatorDynamics : Prop
  equilibriumStability : Prop

structure EvolutionaryGameEvidence (E : EvolutionaryGamePackage) where
  strategySpaceClosed : E.strategySpace
  payoffMatrixClosed : E.payoffMatrix
  replicatorDynamicsClosed : E.replicatorDynamics
  equilibriumStabilityClosed : E.equilibriumStability

def EvolutionaryGameClosed (E : EvolutionaryGamePackage) : Prop :=
  E.strategySpace ∧ E.payoffMatrix ∧ E.replicatorDynamics ∧ E.equilibriumStability

theorem evolutionary_game_closed_from_evidence (E : EvolutionaryGamePackage)
    (Ev : EvolutionaryGameEvidence E) : EvolutionaryGameClosed E := by
  exact ⟨Ev.strategySpaceClosed, Ev.payoffMatrixClosed, Ev.replicatorDynamicsClosed, Ev.equilibriumStabilityClosed⟩

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse