import FunctionsDefinedSeriesIntegralsCanonicalLaneLean.GammaFunctionDefiniteIntegrals

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure LaplaceTransformPackage where
  integralDefinition : Prop
  regionOfConvergence : Prop
  analyticityInHalfPlane : Prop
  inversionFormula : Prop
  uniquenessTheorem : Prop

structure LaplaceTransformEvidence (L : LaplaceTransformPackage) where
  integralDefinitionClosed : L.integralDefinition
  regionOfConvergenceClosed : L.regionOfConvergence
  analyticityInHalfPlaneClosed : L.analyticityInHalfPlane
  inversionFormulaClosed : L.inversionFormula
  uniquenessTheoremClosed : L.uniquenessTheorem

def LaplaceTransformClosed (L : LaplaceTransformPackage) : Prop :=
  L.integralDefinition ∧ L.regionOfConvergence ∧
  L.analyticityInHalfPlane ∧ L.inversionFormula ∧ L.uniquenessTheorem

theorem laplace_transform_closed_from_evidence (L : LaplaceTransformPackage) (E : LaplaceTransformEvidence L) :
    LaplaceTransformClosed L := by
  exact And.intro E.integralDefinitionClosed
    (And.intro E.regionOfConvergenceClosed
      (And.intro E.analyticityInHalfPlaneClosed
        (And.intro E.inversionFormulaClosed E.uniquenessTheoremClosed)))

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse