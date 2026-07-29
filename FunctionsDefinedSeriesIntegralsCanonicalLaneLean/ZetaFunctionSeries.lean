import FunctionsDefinedSeriesIntegralsCanonicalLaneLean.GammaFunctionDefiniteIntegrals

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure ZetaFunctionPackage {G : GammaFunctionPackage} where
  dirichletSeriesDefinition : Prop
  integralRepresentation : Prop
  functionalEquation : Prop
  analyticContinuation : Prop
  trivialZeros : Prop

structure ZetaFunctionEvidence {G : GammaFunctionPackage} (Z : ZetaFunctionPackage G) where
  dirichletSeriesDefinitionClosed : Z.dirichletSeriesDefinition
  integralRepresentationClosed : Z.integralRepresentation
  functionalEquationClosed : Z.functionalEquation
  analyticContinuationClosed : Z.analyticContinuation
  trivialZerosClosed : Z.trivialZeros

def ZetaFunctionClosed {G : GammaFunctionPackage} (Z : ZetaFunctionPackage G) : Prop :=
  Z.dirichletSeriesDefinition ∧ Z.integralRepresentation ∧
  Z.functionalEquation ∧ Z.analyticContinuation ∧ Z.trivialZeros

theorem zeta_function_closed_from_evidence {G : GammaFunctionPackage}
    (Z : ZetaFunctionPackage G) (E : ZetaFunctionEvidence Z) :
    ZetaFunctionClosed Z := by
  exact And.intro E.dirichletSeriesDefinitionClosed
    (And.intro E.integralRepresentationClosed
      (And.intro E.functionalEquationClosed
        (And.intro E.analyticContinuationClosed E.trivialZerosClosed)))

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse