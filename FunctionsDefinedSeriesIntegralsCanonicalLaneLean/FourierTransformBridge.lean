import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure FourierTransformPackage where
  function : ℝ → ℂ
  transform : ℝ → ℂ
  inversionFormulaHolds : Prop
  summabilityCondition : Prop
  bridgeClosed : bridgeClosed (AdmissibleClass.mk _ _ _ _)

def FourierBridgeClosed (F : FourierTransformPackage) : Prop :=
  F.inversionFormulaHolds ∧ F.summabilityCondition

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse