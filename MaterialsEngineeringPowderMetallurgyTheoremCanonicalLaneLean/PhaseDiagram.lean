import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureComposition : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop
  solidSolubility : Prop
  invariantReactions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureCompositionClosed : P.temperatureComposition
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  solidSolubilityClosed : P.solidSolubility
  invariantReactionsClosed : P.invariantReactions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureComposition ∧ P.phaseBoundaries ∧ P.eutecticPoint ∧ P.solidSolubility ∧ P.invariantReactions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureCompositionClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.eutecticPointClosed
        (And.intro E.solidSolubilityClosed E.invariantReactionsClosed)))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
