import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeochemicalFluxPackage where
  primaryProduction : Prop
  respiration : Prop
  mineralization : Prop
  burialRate : Prop

structure GeochemicalFluxEvidence (F : GeochemicalFluxPackage) where
  primaryProductionClosed : F.primaryProduction
  respirationClosed : F.respiration
  mineralizationClosed : F.mineralization
  burialRateClosed : F.burialRate

def GeochemicalFluxClosed (F : GeochemicalFluxPackage) : Prop :=
  F.primaryProduction ∧ F.respiration ∧ F.mineralization ∧ F.burialRate

theorem geochemical_flux_closed_from_evidence (F : GeochemicalFluxPackage) (E : GeochemicalFluxEvidence F) :
  GeochemicalFluxClosed F :=
  And.intro E.primaryProductionClosed (And.intro E.respirationClosed (And.intro E.mineralizationClosed E.burialRateClosed))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse