import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure AbelSummabilityPackage where
  series : ℕ → ℝ
  abelMean : ℝ → ℝ
  limitExists : Prop
  abelSum : ℝ
  tauberianCondition : Prop

def AbelSummableClosed (A : AbelSummabilityPackage) : Prop :=
  A.limitExists ∧ A.tauberianCondition

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse