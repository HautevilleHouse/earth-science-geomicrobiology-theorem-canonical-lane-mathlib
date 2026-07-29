import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure EvolutionaryGamePackage where
  payoffMatrix : Type u
  replicatorDynamics : Type v
  evolutionaryStableStrategy : Prop
  nashEquilibrium : Prop
  populationState : Type w

structure EvolutionaryGameEvidence (G : EvolutionaryGamePackage) where
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy
  nashEquilibriumClosed : G.nashEquilibrium

def EvolutionaryGameClosed (G : EvolutionaryGamePackage) : Prop :=
  G.evolutionaryStableStrategy ∧ G.nashEquilibrium

theorem evolutionary_game_closed_from_evidence (G : EvolutionaryGamePackage)
    (E : EvolutionaryGameEvidence G) : EvolutionaryGameClosed G := by
  exact And.intro E.evolutionaryStableStrategyClosed E.nashEquilibriumClosed

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse