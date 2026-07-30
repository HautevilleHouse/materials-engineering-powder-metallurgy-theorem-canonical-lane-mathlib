import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  crackGrowthCriterion : Prop
  fractureToughness : Prop
  parisLaw : Prop
  fatigueLimit : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  fractureToughnessClosed : F.fractureToughness
  parisLawClosed : F.parisLaw
  fatigueLimitClosed : F.fatigueLimit

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.crackGrowthCriterion ∧ F.fractureToughness ∧ F.parisLaw ∧ F.fatigueLimit

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.crackGrowthCriterionClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.parisLawClosed E.fatigueLimitClosed)))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
