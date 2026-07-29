import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure MineralMicrobeInteractionsPackage where
  mineralDissolution : Prop
  mineralPrecipitation : Prop
  biomineralization : Prop
  redoxTransformations : Prop
  surfaceAttachment : Prop
  biofilmMineralInterface : Prop
  siderophoreProduction : Prop

structure MineralMicrobeInteractionsEvidence (M : MineralMicrobeInteractionsPackage) where
  mineralDissolutionClosed : M.mineralDissolution
  mineralPrecipitationClosed : M.mineralPrecipitation
  biomineralizationClosed : M.biomineralization
  redoxTransformationsClosed : M.redoxTransformations
  surfaceAttachmentClosed : M.surfaceAttachment
  biofilmMineralInterfaceClosed : M.biofilmMineralInterface
  siderophoreProductionClosed : M.siderophoreProduction

def MineralMicrobeInteractionsClosed (M : MineralMicrobeInteractionsPackage) : Prop :=
  M.mineralDissolution ∧ M.mineralPrecipitation ∧ M.biomineralization ∧ M.redoxTransformations ∧ M.surfaceAttachment ∧ M.biofilmMineralInterface ∧ M.siderophoreProduction

theorem mineral_microbe_interactions_closed_from_evidence (M : MineralMicrobeInteractionsPackage) (E : MineralMicrobeInteractionsEvidence M) : MineralMicrobeInteractionsClosed M := by
  exact And.intro E.mineralDissolutionClosed (And.intro E.mineralPrecipitationClosed (And.intro E.biomineralizationClosed (And.intro E.redoxTransformationsClosed (And.intro E.surfaceAttachmentClosed (And.intro E.biofilmMineralInterfaceClosed E.siderophoreProductionClosed)))))

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse