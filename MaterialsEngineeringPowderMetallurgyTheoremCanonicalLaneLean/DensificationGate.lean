import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.SinteringKineticsBridge

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

def gateClosed (A : PowderMetallurgyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : PowderMetallurgyAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse