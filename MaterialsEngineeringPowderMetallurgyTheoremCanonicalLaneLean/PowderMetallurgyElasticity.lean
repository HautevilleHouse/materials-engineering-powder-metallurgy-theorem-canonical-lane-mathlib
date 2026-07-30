import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean.PowderMetallurgyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Prop
  stressStrainRelation : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticModulusClosed : E.elasticModulus
  stressStrainRelationClosed : E.stressStrainRelation
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticModulus ∧ E.stressStrainRelation ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.elasticModulusClosed (And.intro Ev.stressStrainRelationClosed Ev.yieldCriterionClosed)

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse