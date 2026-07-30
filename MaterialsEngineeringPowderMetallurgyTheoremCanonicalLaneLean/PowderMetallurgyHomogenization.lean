import canonicalLaneMathlib.AdmissibleClass

/-!
# Homogenization Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure HomogenizationPackage (P : PowderMetallurgyAdmittedObject) where
  heatTreatmentTemperature : Prop
  homogenizationTime : Prop
  diffusionCoefficient : Prop
  compositionHomogeneity : Prop
  grainSizeDistribution : Prop

structure HomogenizationEvidence {P : PowderMetallurgyAdmittedObject} (H : HomogenizationPackage P) where
  heatTreatmentTemperatureClosed : H.heatTreatmentTemperature
  homogenizationTimeClosed : H.homogenizationTime
  diffusionCoefficientClosed : H.diffusionCoefficient
  compositionHomogeneityClosed : H.compositionHomogeneity
  grainSizeDistributionClosed : H.grainSizeDistribution

def HomogenizationClosed {P : PowderMetallurgyAdmittedObject} (H : HomogenizationPackage P) : Prop :=
  H.heatTreatmentTemperature ∧ H.homogenizationTime ∧ H.diffusionCoefficient ∧
  H.compositionHomogeneity ∧ H.grainSizeDistribution

theorem homogenization_closed_from_evidence {P : PowderMetallurgyAdmittedObject} (H : HomogenizationPackage P) (E : HomogenizationEvidence H) : HomogenizationClosed H := by
  exact And.intro E.heatTreatmentTemperatureClosed
    (And.intro E.homogenizationTimeClosed
      (And.intro E.diffusionCoefficientClosed
        (And.intro E.compositionHomogeneityClosed E.grainSizeDistributionClosed)))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse