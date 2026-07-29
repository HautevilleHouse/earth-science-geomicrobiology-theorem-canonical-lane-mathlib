import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeochemicalCycle where
  element : Type
  reservoir : Type
  flux : reservoir → reservoir → ℝ
  timeScale : ℝ

structure GeochemicalCyclePackage where
  elementIdentity : Prop
  reservoirStructure : Prop
  fluxBalance : Prop
  timeScaleConsistency : Prop

structure GeochemicalCycleEvidence (G : GeochemicalCyclePackage) where
  elementIdentityClosed : G.elementIdentity
  reservoirStructureClosed : G.reservoirStructure
  fluxBalanceClosed : G.fluxBalance
  timeScaleConsistencyClosed : G.timeScaleConsistency

def GeochemicalCycleClosed (G : GeochemicalCyclePackage) : Prop :=
  G.elementIdentity ∧ G.reservoirStructure ∧ G.fluxBalance ∧ G.timeScaleConsistency

theorem geochemical_cycle_closed_from_evidence (G : GeochemicalCyclePackage)
    (E : GeochemicalCycleEvidence G) : GeochemicalCycleClosed G := by
  exact ⟨E.elementIdentityClosed, E.reservoirStructureClosed, E.fluxBalanceClosed, E.timeScaleConsistencyClosed⟩

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse