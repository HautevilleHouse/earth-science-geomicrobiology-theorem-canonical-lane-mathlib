import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure MicrobialPopulationDynamicsPackage where
  growthRate : Prop
  carryingCapacity : Prop
  competitiveExclusion : Prop
  syntrophicInteractions : Prop
  predationPressure : Prop
  environmentalStochasticity : Prop
  horizontalGeneTransfer : Prop
  biofilmFormation : Prop

structure MicrobialPopulationDynamicsEvidence (M : MicrobialPopulationDynamicsPackage) where
  growthRateClosed : M.growthRate
  carryingCapacityClosed : M.carryingCapacity
  competitiveExclusionClosed : M.competitiveExclusion
  syntrophicInteractionsClosed : M.syntrophicInteractions
  predationPressureClosed : M.predationPressure
  environmentalStochasticityClosed : M.environmentalStochasticity
  horizontalGeneTransferClosed : M.horizontalGeneTransfer
  biofilmFormationClosed : M.biofilmFormation

def MicrobialPopulationDynamicsClosed (M : MicrobialPopulationDynamicsPackage) : Prop :=
  M.growthRate ∧ M.carryingCapacity ∧ M.competitiveExclusion ∧ M.syntrophicInteractions ∧ M.predationPressure ∧ M.environmentalStochasticity ∧ M.horizontalGeneTransfer ∧ M.biofilmFormation

theorem microbial_population_dynamics_closed_from_evidence (M : MicrobialPopulationDynamicsPackage) (E : MicrobialPopulationDynamicsEvidence M) : MicrobialPopulationDynamicsClosed M := by
  exact And.intro E.growthRateClosed (And.intro E.carryingCapacityClosed (And.intro E.competitiveExclusionClosed (And.intro E.syntrophicInteractionsClosed (And.intro E.predationPressureClosed (And.intro E.environmentalStochasticityClosed (And.intro E.horizontalGeneTransferClosed E.biofilmFormationClosed))))))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse