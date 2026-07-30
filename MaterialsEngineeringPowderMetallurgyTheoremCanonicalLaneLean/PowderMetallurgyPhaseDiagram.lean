import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseEquilibrium : Prop
  solubilityLimit : Prop
  solidificationPath : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseEquilibriumClosed : P.phaseEquilibrium
  solubilityLimitClosed : P.solubilityLimit
  solidificationPathClosed : P.solidificationPath

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseEquilibrium ∧ P.solubilityLimit ∧ P.solidificationPath

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseEquilibriumClosed (And.intro E.solubilityLimitClosed E.solidificationPathClosed)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse