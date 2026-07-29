import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure RedoxKineticsPackage where
  electronDonor : Prop
  electronAcceptor : Prop
  reactionRateConstant : Prop
  activationEnergy : Prop

structure RedoxKineticsEvidence (R : RedoxKineticsPackage) where
  electronDonorClosed : R.electronDonor
  electronAcceptorClosed : R.electronAcceptor
  reactionRateConstantClosed : R.reactionRateConstant
  activationEnergyClosed : R.activationEnergy

def RedoxKineticsClosed (R : RedoxKineticsPackage) : Prop :=
  R.electronDonor ∧ R.electronAcceptor ∧ R.reactionRateConstant ∧ R.activationEnergy

theorem redox_kinetics_closed_from_evidence (R : RedoxKineticsPackage) (E : RedoxKineticsEvidence R) :
  RedoxKineticsClosed R :=
  And.intro E.electronDonorClosed (And.intro E.electronAcceptorClosed (And.intro E.reactionRateConstantClosed E.activationEnergyClosed))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse