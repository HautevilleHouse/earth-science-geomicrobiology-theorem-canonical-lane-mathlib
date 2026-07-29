import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure BiogeochemicalCyclePackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  sulfurCycle : Prop
  ironCycle : Prop
  manganeseCycle : Prop
  electronDonorAcceptor : Prop
  terminalElectronAcceptorProcesses : Prop

structure BiogeochemicalCycleEvidence (C : BiogeochemicalCyclePackage) where
  carbonCycleClosed : C.carbonCycle
  nitrogenCycleClosed : C.nitrogenCycle
  sulfurCycleClosed : C.sulfurCycle
  ironCycleClosed : C.ironCycle
  manganeseCycleClosed : C.manganeseCycle
  electronDonorAcceptorClosed : C.electronDonorAcceptor
  terminalElectronAcceptorProcessesClosed : C.terminalElectronAcceptorProcesses

def BiogeochemicalCycleClosed (C : BiogeochemicalCyclePackage) : Prop :=
  C.carbonCycle ∧ C.nitrogenCycle ∧ C.sulfurCycle ∧ C.ironCycle ∧ C.manganeseCycle ∧ C.electronDonorAcceptor ∧ C.terminalElectronAcceptorProcesses

theorem biogeochemical_cycle_closed_from_evidence (C : BiogeochemicalCyclePackage) (E : BiogeochemicalCycleEvidence C) : BiogeochemicalCycleClosed C := by
  exact And.intro E.carbonCycleClosed (And.intro E.nitrogenCycleClosed (And.intro E.sulfurCycleClosed (And.intro E.ironCycleClosed (And.intro E.manganeseCycleClosed (And.intro E.electronDonorAcceptorClosed E.terminalElectronAcceptorProcessesClosed)))))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse