import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure PhaseDiagramPackage {A : PowderMetallurgyAdmissibleClass} where
  compositionRange : Prop
  sinteringTemperature : Prop
  phaseStability : Prop

structure PhaseDiagramEvidence {A : PowderMetallurgyAdmissibleClass} (P : PhaseDiagramPackage) where
  compositionRangeClosed : P.compositionRange
  sinteringTemperatureClosed : P.sinteringTemperature
  phaseStabilityClosed : P.phaseStability

def PhaseDiagramClosed {A : PowderMetallurgyAdmissibleClass} (P : PhaseDiagramPackage) : Prop :=
  P.compositionRange ∧ P.sinteringTemperature ∧ P.phaseStability

theorem phase_diagram_closed_from_evidence {A : PowderMetallurgyAdmissibleClass} (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.compositionRangeClosed (And.intro E.sinteringTemperatureClosed E.phaseStabilityClosed)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse