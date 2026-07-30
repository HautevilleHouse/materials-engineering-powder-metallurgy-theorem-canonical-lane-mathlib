import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure CrystallographyLatticePackage where
  latticeType : String
  unitCellVolume : Prop
  symmetryGroup : Prop
  bravaisLattice : Prop
  atomicPositions : Prop

structure CrystallographyLatticeEvidence (C : CrystallographyLatticePackage) where
  unitCellVolumeClosed : C.unitCellVolume
  symmetryGroupClosed : C.symmetryGroup
  bravaisLatticeClosed : C.bravaisLattice
  atomicPositionsClosed : C.atomicPositions

def CrystallographyLatticeClosed (C : CrystallographyLatticePackage) : Prop :=
  C.unitCellVolume ∧ C.symmetryGroup ∧ C.bravaisLattice ∧ C.atomicPositions

theorem crystallography_lattice_closed_from_evidence (C : CrystallographyLatticePackage)
    (E : CrystallographyLatticeEvidence C) : CrystallographyLatticeClosed C := by
  exact And.intro E.unitCellVolumeClosed
    (And.intro E.symmetryGroupClosed
      (And.intro E.bravaisLatticeClosed E.atomicPositionsClosed))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
