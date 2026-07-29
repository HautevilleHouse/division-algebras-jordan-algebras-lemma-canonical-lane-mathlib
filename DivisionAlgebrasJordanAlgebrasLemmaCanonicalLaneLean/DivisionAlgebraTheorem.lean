import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.JordanAlgebraStructure

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure DivisionAlgebraTheoremPackage (J : JordanAlgebraStructure) where
  divisionProperty : Prop
  normExists : Prop
  hurwitzTheorem : Prop
  classificationResult : Prop

structure DivisionAlgebraTheoremEvidence (J : JordanAlgebraStructure)
    (P : DivisionAlgebraTheoremPackage J) where
  divisionPropertyClosed : P.divisionProperty
  normExistsClosed : P.normExists
  hurwitzTheoremClosed : P.hurwitzTheorem
  classificationResultClosed : P.classificationResult

def DivisionAlgebraTheoremClosed (J : JordanAlgebraStructure)
    (P : DivisionAlgebraTheoremPackage J) : Prop :=
  P.divisionProperty ∧ P.normExists ∧ P.hurwitzTheorem ∧ P.classificationResult

theorem division_algebra_theorem_closed_from_evidence (J : JordanAlgebraStructure)
    (P : DivisionAlgebraTheoremPackage J) (E : DivisionAlgebraTheoremEvidence J P) :
    DivisionAlgebraTheoremClosed J P := by
  exact And.intro E.divisionPropertyClosed
    (And.intro E.normExistsClosed
      (And.intro E.hurwitzTheoremClosed E.classificationResultClosed))

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse