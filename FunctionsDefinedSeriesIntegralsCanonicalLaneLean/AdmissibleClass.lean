import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse