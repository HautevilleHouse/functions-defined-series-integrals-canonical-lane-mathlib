import FunctionsDefinedSeriesIntegralsCanonicalLaneLean.GammaFunctionDefiniteIntegrals
import FunctionsDefinedSeriesIntegralsCanonicalLaneLean.ZetaFunctionSeries

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure MellinTransformPackage {G : GammaFunctionPackage} {Z : ZetaFunctionPackage G} where
  integralDefinition : Prop
  fundamentalStrip : Prop
  inversionFormula : Prop
  functionalEquationForZeta : Prop
  ramanujanMasterTheorem : Prop

structure MellinTransformEvidence {G : GammaFunctionPackage} {Z : ZetaFunctionPackage G}
    (M : MellinTransformPackage G Z) where
  integralDefinitionClosed : M.integralDefinition
  fundamentalStripClosed : M.fundamentalStrip
  inversionFormulaClosed : M.inversionFormula
  functionalEquationForZetaClosed : M.functionalEquationForZeta
  ramanujanMasterTheoremClosed : M.ramanujanMasterTheorem

def MellinTransformClosed {G : GammaFunctionPackage} {Z : ZetaFunctionPackage G}
    (M : MellinTransformPackage G Z) : Prop :=
  M.integralDefinition ∧ M.fundamentalStrip ∧
  M.inversionFormula ∧ M.functionalEquationForZeta ∧ M.ramanujanMasterTheorem

theorem mellin_transform_closed_from_evidence {G : GammaFunctionPackage} {Z : ZetaFunctionPackage G}
    (M : MellinTransformPackage G Z) (E : MellinTransformEvidence M) :
    MellinTransformClosed M := by
  exact And.intro E.integralDefinitionClosed
    (And.intro E.fundamentalStripClosed
      (And.intro E.inversionFormulaClosed
        (And.intro E.functionalEquationForZetaClosed E.ramanujanMasterTheoremClosed)))

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse