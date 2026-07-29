import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure MetabolicNetwork where
  metabolite : Type
  reaction : Type
  stoichiometry : ℕ
  kinetics : ℝ

structure MetabolicNetworkPackage where
  metaboliteIdentification : Prop
  reactionMechanism : Prop
  stoichiometryBalance : Prop
  kineticsParameters : Prop

structure MetabolicNetworkEvidence (M : MetabolicNetworkPackage) where
  metaboliteIdentificationClosed : M.metaboliteIdentification
  reactionMechanismClosed : M.reactionMechanism
  stoichiometryBalanceClosed : M.stoichiometryBalance
  kineticsParametersClosed : M.kineticsParameters

def MetabolicNetworkClosed (M : MetabolicNetworkPackage) : Prop :=
  M.metaboliteIdentification ∧ M.reactionMechanism ∧ M.stoichiometryBalance ∧ M.kineticsParameters

theorem metabolic_network_closed_from_evidence (M : MetabolicNetworkPackage)
    (E : MetabolicNetworkEvidence M) : MetabolicNetworkClosed M := by
  exact ⟨E.metaboliteIdentificationClosed, E.reactionMechanismClosed, E.stoichiometryBalanceClosed, E.kineticsParametersClosed⟩

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse