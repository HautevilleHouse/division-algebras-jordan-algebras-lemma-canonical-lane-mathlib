import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure HurwitzTheoremPackage where
  compositionAlgebra : Type u
  normedDivisionAlgebra : Prop
  dimensionRestriction : Prop
  classificationComplete : Prop

structure HurwitzTheoremEvidence (H : HurwitzTheoremPackage) where
  normedDivisionAlgebraClosed : H.normedDivisionAlgebra
  dimensionRestrictionClosed : H.dimensionRestriction
  classificationCompleteClosed : H.classificationComplete

def HurwitzTheoremClosed (H : HurwitzTheoremPackage) : Prop :=
  H.normedDivisionAlgebra ∧ H.dimensionRestriction ∧ H.classificationComplete

theorem hurwitz_theorem_closed_from_evidence (H : HurwitzTheoremPackage) (E : HurwitzTheoremEvidence H) : HurwitzTheoremClosed H :=
  And.intro E.normedDivisionAlgebraClosed (And.intro E.dimensionRestrictionClosed E.classificationCompleteClosed)

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse