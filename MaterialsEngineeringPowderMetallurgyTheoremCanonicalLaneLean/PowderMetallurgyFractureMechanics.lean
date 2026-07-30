import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackPropagation : Prop
  fractureToughness : Prop
  fatigueLife : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationClosed : F.crackPropagation
  fractureToughnessClosed : F.fractureToughness
  fatigueLifeClosed : F.fatigueLife

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagation ∧ F.fractureToughness ∧ F.fatigueLife

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationClosed (And.intro E.fractureToughnessClosed E.fatigueLifeClosed)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse