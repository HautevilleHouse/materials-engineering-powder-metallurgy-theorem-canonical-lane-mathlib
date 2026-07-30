import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure SinteringThermodynamicsPackage where
  surfaceEnergyReduction : Prop
  diffusionCoefficient : Prop
  neckGrowthRate : Prop
  poreElimination : Prop

structure SinteringThermodynamicsEvidence (S : SinteringThermodynamicsPackage) where
  surfaceEnergyReductionClosed : S.surfaceEnergyReduction
  diffusionCoefficientClosed : S.diffusionCoefficient
  neckGrowthRateClosed : S.neckGrowthRate
  poreEliminationClosed : S.poreElimination

def SinteringThermodynamicsClosed (S : SinteringThermodynamicsPackage) : Prop :=
  S.surfaceEnergyReduction ∧ S.diffusionCoefficient ∧ S.neckGrowthRate ∧ S.poreElimination

theorem sintering_thermodynamics_closed_from_evidence
    (S : SinteringThermodynamicsPackage) (E : SinteringThermodynamicsEvidence S) :
    SinteringThermodynamicsClosed S := by
  exact And.intro E.surfaceEnergyReductionClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.neckGrowthRateClosed E.poreEliminationClosed))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse