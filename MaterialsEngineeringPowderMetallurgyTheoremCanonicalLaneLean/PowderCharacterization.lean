import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure PowderCharacterizationPackage where
  particleSizeDistribution : Prop
  morphologyClassification : Prop
  flowabilityIndex : Prop
  packingDensity : Prop

structure PowderCharacterizationEvidence (P : PowderCharacterizationPackage) where
  particleSizeDistributionClosed : P.particleSizeDistribution
  morphologyClassificationClosed : P.morphologyClassification
  flowabilityIndexClosed : P.flowabilityIndex
  packingDensityClosed : P.packingDensity

def PowderCharacterizationClosed (P : PowderCharacterizationPackage) : Prop :=
  P.particleSizeDistribution ∧ P.morphologyClassification ∧ P.flowabilityIndex ∧ P.packingDensity

theorem powder_characterization_closed_from_evidence
    (P : PowderCharacterizationPackage) (E : PowderCharacterizationEvidence P) :
    PowderCharacterizationClosed P := by
  exact And.intro E.particleSizeDistributionClosed
    (And.intro E.morphologyClassificationClosed
      (And.intro E.flowabilityIndexClosed E.packingDensityClosed))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse