import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure ConsolidationMechanicsPackage where
  compressibilityCurve : Prop
  elasticRecovery : Prop
  greenStrength : Prop
  densificationMechanism : Prop

structure ConsolidationMechanicsEvidence (C : ConsolidationMechanicsPackage) where
  compressibilityCurveClosed : C.compressibilityCurve
  elasticRecoveryClosed : C.elasticRecovery
  greenStrengthClosed : C.greenStrength
  densificationMechanismClosed : C.densificationMechanism

def ConsolidationMechanicsClosed (C : ConsolidationMechanicsPackage) : Prop :=
  C.compressibilityCurve ∧ C.elasticRecovery ∧ C.greenStrength ∧ C.densificationMechanism

theorem consolidation_mechanics_closed_from_evidence
    (C : ConsolidationMechanicsPackage) (E : ConsolidationMechanicsEvidence C) :
    ConsolidationMechanicsClosed C := by
  exact And.intro E.compressibilityCurveClosed
    (And.intro E.elasticRecoveryClosed
      (And.intro E.greenStrengthClosed E.densificationMechanismClosed))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse