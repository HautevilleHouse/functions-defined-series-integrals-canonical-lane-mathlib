import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure FunctionsDefinedSeriesIntegralsAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  seriesExpression : Prop
  integralRepresentation : Prop
  convergenceCondition : Prop
  conclusion : seriesExpression ∧ integralRepresentation ∧ convergenceCondition

def FunctionsDefinedSeriesIntegralsWitnessClosed (O : FunctionsDefinedSeriesIntegralsAdmittedObject) : Prop :=
  O.conclusion

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse
