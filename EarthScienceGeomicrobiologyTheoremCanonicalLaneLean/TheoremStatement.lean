import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeomicrobiologyTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  geoMicrobialConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "Earth Science Geomicrobiology Theorem"
def sourceDescription : String := "Earth Science Geomicrobiology Theorem"
def baselineCertificateLane : String := "geo_microbial_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "endpoint and remainder boundary",
  geoMicrobialConstrainedStatement := "geo-microbial-constrained theorem certificate internalized through microbial dynamics, biogeochemical cycling, and population endpoints",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "unrestricted classical boundary remains carried"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end EarthScienceGeomicrobiologyTheoremCanonicalLaneLean
end HautevilleHouse
