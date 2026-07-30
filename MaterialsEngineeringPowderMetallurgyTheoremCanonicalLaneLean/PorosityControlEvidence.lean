import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure PorosityLevel where
  porosity : ℝ
  closedPorosity : Prop

def admissiblePorosity (p : ℝ) : Prop :=
  p ≤ 0.1

structure PorosityControlEvidence where
  porosityMeasurement : ℝ
  admissible : admissiblePorosity porosityMeasurement

theorem porosity_control_evidence_closed (E : PorosityControlEvidence) :
    admissiblePorosity E.porosityMeasurement := by
  exact E.admissible

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse