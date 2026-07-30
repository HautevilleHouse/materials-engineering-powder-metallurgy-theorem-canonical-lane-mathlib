import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean

structure ElasticityModulePackage where
  youngModulus : Prop
  shearModulus : Prop
  poissonRatio : Prop
  hookesLaw : Prop
  isotropyCondition : Prop

structure ElasticityModuleEvidence (E : ElasticityModulePackage) where
  youngModulusClosed : E.youngModulus
  shearModulusClosed : E.shearModulus
  poissonRatioClosed : E.poissonRatio
  hookesLawClosed : E.hookesLaw
  isotropyConditionClosed : E.isotropyCondition

def ElasticityModuleClosed (E : ElasticityModulePackage) : Prop :=
  E.youngModulus ∧ E.shearModulus ∧ E.poissonRatio ∧ E.hookesLaw ∧ E.isotropyCondition

theorem elasticity_module_closed_from_evidence (E : ElasticityModulePackage)
    (Ev : ElasticityModuleEvidence E) : ElasticityModuleClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.shearModulusClosed
      (And.intro Ev.poissonRatioClosed
        (And.intro Ev.hookesLawClosed Ev.isotropyConditionClosed)))

end MaterialsEngineeringPowderMetallurgyTheoremCanonicalLaneLean
end HautevilleHouse
