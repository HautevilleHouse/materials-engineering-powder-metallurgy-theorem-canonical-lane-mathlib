import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

/-!
# Powder Metallurgy — Compaction and Elasticity Package

This module records compaction pressure, green density, and elastic modulus data.
-/

structure CompactionElasticityPackage where
  compactionPressure : Float
  greenDensity : Float
  elasticModulus : Float
  poissonRatio : Float
  yieldStrength : Float
  compactionModelCalibrated : Prop
  elasticPropertiesValidated : Prop

structure CompactionElasticityEvidence (C : CompactionElasticityPackage) where
  compactionPressurePositive : C.compactionPressure > 0
  greenDensityConsistent : C.greenDensity > 0 ∧ C.greenDensity < 1
  elasticModulusPositive : C.elasticModulus > 0
  poissonRatioInRange : -1 < C.poissonRatio ∧ C.poissonRatio < 0.5
  yieldStrengthPositive : C.yieldStrength > 0
  compactionModelCalibratedClosed : C.compactionModelCalibrated
  elasticPropertiesValidatedClosed : C.elasticPropertiesValidated

def CompactionElasticityClosed (C : CompactionElasticityPackage) : Prop :=
  C.compactionModelCalibrated ∧ C.elasticPropertiesValidated

theorem compaction_elasticity_closed_from_evidence (C : CompactionElasticityPackage) (E : CompactionElasticityEvidence C) :
    CompactionElasticityClosed C := by
  exact And.intro E.compactionModelCalibratedClosed E.elasticPropertiesValidatedClosed

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
