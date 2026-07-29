import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeomicrobiologyPopulationModel where
  species : Type u
  substrates : Type v
  growthRate : species -> substrates -> ℝ
  inhibitionTerm : species -> ℝ
  carryingCapacity : species -> ℝ
  initialBiomass : species -> ℝ

structure GeomicrobiologyPopulationEvidence (M : GeomicrobiologyPopulationModel) where
  growthRatePositive : ∀ s : M.species, ∀ sub : M.substrates, M.growthRate s sub > 0
  inhibitionTermNonnegative : ∀ s : M.species, M.inhibitionTerm s ≥ 0
  carryingCapacityPositive : ∀ s : M.species, M.carryingCapacity s > 0
  initialBiomassPositive : ∀ s : M.species, M.initialBiomass s > 0

def GeomicrobiologyPopulationClosed (M : GeomicrobiologyPopulationModel) : Prop :=
  (∀ s : M.species, ∀ sub : M.substrates, M.growthRate s sub > 0) ∧
  (∀ s : M.species, M.inhibitionTerm s ≥ 0) ∧
  (∀ s : M.species, M.carryingCapacity s > 0) ∧
  (∀ s : M.species, M.initialBiomass s > 0)

theorem geomicrobiology_population_closed_from_evidence
    (M : GeomicrobiologyPopulationModel) (E : GeomicrobiologyPopulationEvidence M) :
    GeomicrobiologyPopulationClosed M := by
  exact And.intro E.growthRatePositive
    (And.intro E.inhibitionTermNonnegative
      (And.intro E.carryingCapacityPositive E.initialBiomassPositive))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse