import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure BiomineralizationPackage where
  nucleationSite : Type u
  mineralPrecipitation : Type v
  supersaturation : Prop
  crystalGrowth : Prop
  microbialControl : Prop

structure BiomineralizationEvidence (B : BiomineralizationPackage) where
  supersaturationClosed : B.supersaturation
  crystalGrowthClosed : B.crystalGrowth
  microbialControlClosed : B.microbialControl

def BiomineralizationClosed (B : BiomineralizationPackage) : Prop :=
  B.supersaturation ∧ B.crystalGrowth ∧ B.microbialControl

theorem biomineralization_closed_from_evidence (B : BiomineralizationPackage)
    (E : BiomineralizationEvidence B) : BiomineralizationClosed B := by
  exact And.intro E.supersaturationClosed (And.intro E.crystalGrowthClosed E.microbialControlClosed)

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse