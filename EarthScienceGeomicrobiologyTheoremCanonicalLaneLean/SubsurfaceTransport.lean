import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure SubsurfaceTransportPackage where
  advectionDispersion : Prop
  retardationFactor : Prop
  biodegradationKinetics : Prop
  colloidFacilitatedTransport : Prop
  fractureFlow : Prop
  porousMediaHeterogeneity : Prop
  reactiveTransportCoupling : Prop

structure SubsurfaceTransportEvidence (S : SubsurfaceTransportPackage) where
  advectionDispersionClosed : S.advectionDispersion
  retardationFactorClosed : S.retardationFactor
  biodegradationKineticsClosed : S.biodegradationKinetics
  colloidFacilitatedTransportClosed : S.colloidFacilitatedTransport
  fractureFlowClosed : S.fractureFlow
  porousMediaHeterogeneityClosed : S.porousMediaHeterogeneity
  reactiveTransportCouplingClosed : S.reactiveTransportCoupling

def SubsurfaceTransportClosed (S : SubsurfaceTransportPackage) : Prop :=
  S.advectionDispersion ∧ S.retardationFactor ∧ S.biodegradationKinetics ∧ S.colloidFacilitatedTransport ∧ S.fractureFlow ∧ S.porousMediaHeterogeneity ∧ S.reactiveTransportCoupling

theorem subsurface_transport_closed_from_evidence (S : SubsurfaceTransportPackage) (E : SubsurfaceTransportEvidence S) : SubsurfaceTransportClosed S := by
  exact And.intro E.advectionDispersionClosed (And.intro E.retardationFactorClosed (And.intro E.biodegradationKineticsClosed (And.intro E.colloidFacilitatedTransportClosed (And.intro E.fractureFlowClosed (And.intro E.porousMediaHeterogeneityClosed E.reactiveTransportCouplingClosed)))))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse