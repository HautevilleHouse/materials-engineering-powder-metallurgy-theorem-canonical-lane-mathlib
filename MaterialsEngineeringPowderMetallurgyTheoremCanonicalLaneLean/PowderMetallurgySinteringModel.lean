import canonicalLaneMathlib.AdmissibleClass

/-!
# Sintering Model Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure SinteringModelPackage (P : PowderMetallurgyAdmittedObject) where
  particleSizeDistribution : Prop
  greenDensity : Prop
  sinteringTemperature : Prop
  sinteringTime : Prop
  finalDensity : Prop
  grainGrowth : Prop

structure SinteringModelEvidence {P : PowderMetallurgyAdmittedObject} (S : SinteringModelPackage P) where
  particleSizeDistributionClosed : S.particleSizeDistribution
  greenDensityClosed : S.greenDensity
  sinteringTemperatureClosed : S.sinteringTemperature
  sinteringTimeClosed : S.sinteringTime
  finalDensityClosed : S.finalDensity
  grainGrowthClosed : S.grainGrowth

def SinteringModelClosed {P : PowderMetallurgyAdmittedObject} (S : SinteringModelPackage P) : Prop :=
  S.particleSizeDistribution ∧ S.greenDensity ∧ S.sinteringTemperature ∧
  S.sinteringTime ∧ S.finalDensity ∧ S.grainGrowth

theorem sintering_model_closed_from_evidence {P : PowderMetallurgyAdmittedObject} (S : SinteringModelPackage P) (E : SinteringModelEvidence S) : SinteringModelClosed S := by
  exact And.intro E.particleSizeDistributionClosed
    (And.intro E.greenDensityClosed
      (And.intro E.sinteringTemperatureClosed
        (And.intro E.sinteringTimeClosed
          (And.intro E.finalDensityClosed E.grainGrowthClosed))))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse