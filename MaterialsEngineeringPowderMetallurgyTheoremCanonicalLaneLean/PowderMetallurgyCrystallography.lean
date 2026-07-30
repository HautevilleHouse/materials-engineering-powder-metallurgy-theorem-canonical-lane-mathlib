import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure CrystallographyPackage where
  crystalSymmetry : Prop
  bravaisLattice : Prop
  powderDiffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  crystalSymmetryClosed : C.crystalSymmetry
  bravaisLatticeClosed : C.bravaisLattice
  powderDiffractionPatternClosed : C.powderDiffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.crystalSymmetry ∧ C.bravaisLattice ∧ C.powderDiffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.crystalSymmetryClosed (And.intro E.bravaisLatticeClosed E.powderDiffractionPatternClosed)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse