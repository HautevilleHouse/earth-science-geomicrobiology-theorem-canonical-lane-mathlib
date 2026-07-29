import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeomicrobialKineticsPackage where
  monodKinetics : Prop
  michaelisMentenEnzyme : Prop
  inhibitionModels : Prop
  temperatureDependence : Prop
  pHOptima : Prop
  redoxPotentialDependence : Prop
  rateLimitingStep : Prop

structure GeomicrobialKineticsEvidence (G : GeomicrobialKineticsPackage) where
  monodKineticsClosed : G.monodKinetics
  michaelisMentenEnzymeClosed : G.michaelisMentenEnzyme
  inhibitionModelsClosed : G.inhibitionModels
  temperatureDependenceClosed : G.temperatureDependence
  pHOptimaClosed : G.pHOptima
  redoxPotentialDependenceClosed : G.redoxPotentialDependence
  rateLimitingStepClosed : G.rateLimitingStep

def GeomicrobialKineticsClosed (G : GeomicrobialKineticsPackage) : Prop :=
  G.monodKinetics ∧ G.michaelisMentenEnzyme ∧ G.inhibitionModels ∧ G.temperatureDependence ∧ G.pHOptima ∧ G.redoxPotentialDependence ∧ G.rateLimitingStep

theorem geomicrobial_kinetics_closed_from_evidence (G : GeomicrobialKineticsPackage) (E : GeomicrobialKineticsEvidence G) : GeomicrobialKineticsClosed G := by
  exact And.intro E.monodKineticsClosed (And.intro E.michaelisMentenEnzymeClosed (And.intro E.inhibitionModelsClosed (And.intro E.temperatureDependenceClosed (And.intro E.pHOptimaClosed (And.intro E.redoxPotentialDependenceClosed E.rateLimitingStepClosed)))))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse