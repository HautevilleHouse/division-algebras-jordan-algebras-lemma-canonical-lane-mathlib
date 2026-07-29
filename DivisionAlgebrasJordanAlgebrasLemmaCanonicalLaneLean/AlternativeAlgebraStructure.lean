import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.DivisionAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure AlternativeAlgebraPackage where
  alternativeIdentities : Prop
  leftAlternative : Prop
  rightAlternative : Prop
  flexibleIdentity : Prop
  artinTheoremApplied : Prop

structure AlternativeAlgebraEvidence (P : AlternativeAlgebraPackage) where
  leftAlternativeClosed : P.leftAlternative
  rightAlternativeClosed : P.rightAlternative
  flexibleIdentityClosed : P.flexibleIdentity
  artinTheoremAppliedClosed : P.artinTheoremApplied

def AlternativeAlgebraClosed (P : AlternativeAlgebraPackage) : Prop :=
  P.leftAlternative ∧ P.rightAlternative ∧ P.flexibleIdentity ∧ P.artinTheoremApplied

theorem alternative_algebra_closed_from_evidence
    (P : AlternativeAlgebraPackage) (E : AlternativeAlgebraEvidence P) :
    AlternativeAlgebraClosed P :=
by
  exact And.intro E.leftAlternativeClosed
    (And.intro E.rightAlternativeClosed
      (And.intro E.flexibleIdentityClosed E.artinTheoremAppliedClosed))

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse