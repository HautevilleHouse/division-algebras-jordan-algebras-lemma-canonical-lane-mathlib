import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure DivisionAlgebraClassificationPackage where
  realNumbers : Type u
  complexNumbers : Type v
  quaternions : Type w
  octonions : Type x
  realDivisionAlgebra : Prop
  complexDivisionAlgebra : Prop
  quaternionDivisionAlgebra : Prop
  octonionDivisionAlgebra : Prop
  classificationComplete : Prop

structure DivisionAlgebraClassificationEvidence (D : DivisionAlgebraClassificationPackage) where
  realDivisionAlgebraClosed : D.realDivisionAlgebra
  complexDivisionAlgebraClosed : D.complexDivisionAlgebra
  quaternionDivisionAlgebraClosed : D.quaternionDivisionAlgebra
  octonionDivisionAlgebraClosed : D.octonionDivisionAlgebra
  classificationCompleteClosed : D.classificationComplete

def DivisionAlgebraClassificationClosed (D : DivisionAlgebraClassificationPackage) : Prop :=
  D.realDivisionAlgebra ∧ D.complexDivisionAlgebra ∧ D.quaternionDivisionAlgebra ∧ D.octonionDivisionAlgebra ∧ D.classificationComplete

theorem division_algebra_classification_closed_from_evidence (D : DivisionAlgebraClassificationPackage) (E : DivisionAlgebraClassificationEvidence D) : DivisionAlgebraClassificationClosed D :=
  And.intro E.realDivisionAlgebraClosed (And.intro E.complexDivisionAlgebraClosed (And.intro E.quaternionDivisionAlgebraClosed (And.intro E.octonionDivisionAlgebraClosed E.classificationCompleteClosed)))

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse