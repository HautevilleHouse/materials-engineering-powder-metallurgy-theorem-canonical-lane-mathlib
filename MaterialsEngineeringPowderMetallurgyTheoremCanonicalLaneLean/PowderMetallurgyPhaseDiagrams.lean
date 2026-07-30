import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

/-!
# Powder Metallurgy — Phase Diagrams Package

This module records phase diagram data and equilibrium constraints.
-/

structure PhaseDiagramPackage where
  alloySystem : String
  solidusTemperature : Float
  liquidusTemperature : Float
  eutecticComposition : Float
  eutecticTemperature : Float
  phaseBoundariesIdentified : Prop
  equilibriumPhasesClassified : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  solidusLiquidusConsistent : P.solidusTemperature < P.liquidusTemperature
  eutecticTemperatureConsistent : P.eutecticTemperature ≤ P.liquidusTemperature
  eutecticCompositionInRange : 0 ≤ P.eutecticComposition ∧ P.eutecticComposition ≤ 1
  phaseBoundariesIdentifiedClosed : P.phaseBoundariesIdentified
  equilibriumPhasesClassifiedClosed : P.equilibriumPhasesClassified

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesIdentified ∧ P.equilibriumPhasesClassified

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesIdentifiedClosed E.equilibriumPhasesClassifiedClosed

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
