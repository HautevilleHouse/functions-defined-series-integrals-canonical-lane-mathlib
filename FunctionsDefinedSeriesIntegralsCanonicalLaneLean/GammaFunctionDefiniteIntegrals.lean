import FunctionsDefinedSeriesIntegralsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure GammaFunctionPackage where
  integralRepresentation : Prop
  analyticContinuation : Prop
  productFormula : Prop
  reflectionFormula : Prop
  duplicationFormula : Prop

structure GammaFunctionEvidence (G : GammaFunctionPackage) where
  integralRepresentationClosed : G.integralRepresentation
  analyticContinuationClosed : G.analyticContinuation
  productFormulaClosed : G.productFormula
  reflectionFormulaClosed : G.reflectionFormula
  duplicationFormulaClosed : G.duplicationFormula

def GammaFunctionClosed (G : GammaFunctionPackage) : Prop :=
  G.integralRepresentation ∧ G.analyticContinuation ∧
  G.productFormula ∧ G.reflectionFormula ∧ G.duplicationFormula

theorem gamma_function_closed_from_evidence (G : GammaFunctionPackage) (E : GammaFunctionEvidence G) :
    GammaFunctionClosed G := by
  exact And.intro E.integralRepresentationClosed
    (And.intro E.analyticContinuationClosed
      (And.intro E.productFormulaClosed
        (And.intro E.reflectionFormulaClosed E.duplicationFormulaClosed)))

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse