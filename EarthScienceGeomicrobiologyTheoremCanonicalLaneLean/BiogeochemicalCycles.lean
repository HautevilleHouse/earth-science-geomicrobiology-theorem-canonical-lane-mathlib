import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure BiogeochemicalCyclesPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  sulfurCycle : Prop
  ironCycle : Prop
  microbialMediation : Prop

structure BiogeochemicalCyclesEvidence (C : BiogeochemicalCyclesPackage) where
  carbonCycleClosed : C.carbonCycle
  nitrogenCycleClosed : C.nitrogenCycle
  sulfurCycleClosed : C.sulfurCycle
  ironCycleClosed : C.ironCycle
  microbialMediationClosed : C.microbialMediation

def BiogeochemicalCyclesClosed (C : BiogeochemicalCyclesPackage) : Prop :=
  C.carbonCycle ∧ C.nitrogenCycle ∧ C.sulfurCycle ∧ C.ironCycle ∧ C.microbialMediation

theorem biogeochemical_cycles_closed_from_evidence
    (C : BiogeochemicalCyclesPackage) (E : BiogeochemicalCyclesEvidence C) :
    BiogeochemicalCyclesClosed C := by
  exact And.intro E.carbonCycleClosed
    (And.intro E.nitrogenCycleClosed
      (And.intro E.sulfurCycleClosed
        (And.intro E.ironCycleClosed E.microbialMediationClosed)))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse