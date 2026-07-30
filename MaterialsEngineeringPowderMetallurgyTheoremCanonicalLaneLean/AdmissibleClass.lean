import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : PowderMetallurgyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PowderMetallurgyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse