import FunctionsDefinedSeriesIntegralsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsDefinedSeriesIntegralsCanonicalLaneLean

structure FourierSeriesPackage where
  orthonormalBasis : Prop
  convergenceInNorm : Prop
  pointwiseConvergence : Prop
  fejerTheorem : Prop
  derivativeRepresentation : Prop

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  orthonormalBasisClosed : F.orthonormalBasis
  convergenceInNormClosed : F.convergenceInNorm
  pointwiseConvergenceClosed : F.pointwiseConvergence
  fejerTheoremClosed : F.fejerTheorem
  derivativeRepresentationClosed : F.derivativeRepresentation

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.orthonormalBasis ∧ F.convergenceInNorm ∧
  F.pointwiseConvergence ∧ F.fejerTheorem ∧ F.derivativeRepresentation

theorem fourier_series_closed_from_evidence (F : FourierSeriesPackage) (E : FourierSeriesEvidence F) :
    FourierSeriesClosed F := by
  exact And.intro E.orthonormalBasisClosed
    (And.intro E.convergenceInNormClosed
      (And.intro E.pointwiseConvergenceClosed
        (And.intro E.fejerTheoremClosed E.derivativeRepresentationClosed)))

end FunctionsDefinedSeriesIntegralsCanonicalLaneLean
end HautevilleHouse