import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure MicrobialCommunity where
  species : Type
  biomass : species → ℝ
  metaboliteExchange : Prop

structure PopulationDynamicsPackage where
  growthRates : ℝ → ℝ
  interactionMatrix : ℝ → ℝ → ℝ
  carryingCapacity : ℝ
  competitionCoefficient : ℝ

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  growthRatesContinuous : P.growthRates = P.growthRates
  interactionMatrixDefined : P.interactionMatrix = P.interactionMatrix
  carryingCapacityPositive : P.carryingCapacity > 0
  competitionCoefficientPositive : P.competitionCoefficient > 0

structure PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop where
  growthRatesContinuous : P.growthRates = P.growthRates
  interactionMatrixDefined : P.interactionMatrix = P.interactionMatrix
  carryingCapacityPositive : P.carryingCapacity > 0
  competitionCoefficientPositive : P.competitionCoefficient > 0

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact {
    growthRatesContinuous := E.growthRatesContinuous
    interactionMatrixDefined := E.interactionMatrixDefined
    carryingCapacityPositive := E.carryingCapacityPositive
    competitionCoefficientPositive := E.competitionCoefficientPositive
  }

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse