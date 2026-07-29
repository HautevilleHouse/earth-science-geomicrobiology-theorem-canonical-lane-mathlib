import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeochemicalCyclingPackage where
  redoxReactions : Type u
  nutrientFluxes : Type v
  microbialCatalysis : Prop
  steadyStateConcentrations : Prop
  reactionRates : Type w

structure GeochemicalCyclingEvidence (C : GeochemicalCyclingPackage) where
  microbialCatalysisClosed : C.microbialCatalysis
  steadyStateConcentrationsClosed : C.steadyStateConcentrations

def GeochemicalCyclingClosed (C : GeochemicalCyclingPackage) : Prop :=
  C.microbialCatalysis ∧ C.steadyStateConcentrations

theorem geochemical_cycling_closed_from_evidence (C : GeochemicalCyclingPackage)
    (E : GeochemicalCyclingEvidence C) : GeochemicalCyclingClosed C := by
  exact And.intro E.microbialCatalysisClosed E.steadyStateConcentrationsClosed

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse