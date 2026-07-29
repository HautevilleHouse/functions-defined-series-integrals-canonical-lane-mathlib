import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

def ConstrainedFunctionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functions_endgame (A : AdmissibleClass) :
    ConstrainedFunctionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse