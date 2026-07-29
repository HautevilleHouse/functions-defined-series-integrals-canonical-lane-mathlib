import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse