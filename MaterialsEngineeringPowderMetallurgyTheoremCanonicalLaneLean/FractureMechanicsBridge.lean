import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure FractureMechanicsPackage {A : PowderMetallurgyAdmissibleClass} where
  stressIntensityFactor : Prop
  crackPropagation : Prop
  fractureToughness : Prop

structure FractureMechanicsEvidence {A : PowderMetallurgyAdmissibleClass} (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  crackPropagationClosed : F.crackPropagation
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed {A : PowderMetallurgyAdmissibleClass} (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.crackPropagation ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence {A : PowderMetallurgyAdmissibleClass} (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.crackPropagationClosed E.fractureToughnessClosed)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse