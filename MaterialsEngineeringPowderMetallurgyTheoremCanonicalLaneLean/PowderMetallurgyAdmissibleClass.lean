import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure SinteredObject where
  material : Type u
  porosity : ℝ
  heatTreatmentTemperature : ℝ
  density : ℝ

def admissibleDensityRange (s : SinteredObject) : Prop :=
  s.density ≥ 0.90 ∧ s.density ≤ 1.0

structure PowderMetallurgyAdmissibleClass where
  object : SinteredObject
  admissibleDensity : admissibleDensityRange object
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedPowderMetallurgyClosure (A : PowderMetallurgyAdmissibleClass) : Prop :=
  A.admissibleDensity ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse