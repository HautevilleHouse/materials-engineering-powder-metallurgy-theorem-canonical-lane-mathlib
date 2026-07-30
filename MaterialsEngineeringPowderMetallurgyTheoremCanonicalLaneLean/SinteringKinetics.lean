import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure SinteringKineticsPackage where
  diffusionCoefficient : Prop
  neckGrowthRate : Prop
  poreShrinkage : Prop
  grainBoundaryMigration : Prop
  activationEnergy : Prop

structure SinteringKineticsEvidence (S : SinteringKineticsPackage) where
  diffusionCoefficientClosed : S.diffusionCoefficient
  neckGrowthRateClosed : S.neckGrowthRate
  poreShrinkageClosed : S.poreShrinkage
  grainBoundaryMigrationClosed : S.grainBoundaryMigration
  activationEnergyClosed : S.activationEnergy

def SinteringKineticsClosed (S : SinteringKineticsPackage) : Prop :=
  S.diffusionCoefficient ∧ S.neckGrowthRate ∧ S.poreShrinkage ∧ S.grainBoundaryMigration ∧ S.activationEnergy

theorem sintering_kinetics_closed_from_evidence (S : SinteringKineticsPackage)
    (E : SinteringKineticsEvidence S) : SinteringKineticsClosed S := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.neckGrowthRateClosed
      (And.intro E.poreShrinkageClosed
        (And.intro E.grainBoundaryMigrationClosed E.activationEnergyClosed)))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
