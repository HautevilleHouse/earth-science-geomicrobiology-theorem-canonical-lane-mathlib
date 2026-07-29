import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure GeomicrobiologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeomicrobiologyAdmittedObject where
  space : GeomicrobiologySpace
  microbialActivityWitnessed : Prop
  biogeochemicalCyclesClosed : Prop
  conclusion : microbialActivityWitnessed ∧ biogeochemicalCyclesClosed

structure GeomicrobiologyEndgameState where
  object : GeomicrobiologyAdmittedObject

def GeomicrobiologyWitnessClosed (O : GeomicrobiologyAdmittedObject) : Prop :=
  O.microbialActivityWitnessed ∧ O.biogeochemicalCyclesClosed

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse