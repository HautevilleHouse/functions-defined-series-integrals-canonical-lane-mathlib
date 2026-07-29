import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure SeriesIntegralPackage where
  domain : Type u
  topology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  integrand : domain → ℝ
  seriesTerms : ℕ → (domain → ℝ)
  sumConverges : Prop
  integralEqualsSeries : Prop
  integrability : Prop

def SeriesIntegralClosed (S : SeriesIntegralPackage) : Prop :=
  S.sumConverges ∧ S.integralEqualsSeries ∧ S.integrability

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse