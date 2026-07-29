import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure JordanAlgebraFormalRealsPackage where
  carrier : Type u
  plus : carrier → carrier → carrier
  dot : carrier → carrier → carrier
  unit : carrier
  jordanIdentity : ∀ a b : carrier, (a dot b) dot (a dot a) = a dot (b dot (a dot a))
  commutative : ∀ a b : carrier, a dot b = b dot a
  formalReals : Prop

structure JordanAlgebraFormalRealsEvidence (J : JordanAlgebraFormalRealsPackage) where
  jordanIdentityClosed : J.jordanIdentity
  commutativeClosed : J.commutative
  formalRealsClosed : J.formalReals

def JordanAlgebraFormalRealsClosed (J : JordanAlgebraFormalRealsPackage) : Prop :=
  J.jordanIdentity ∧ J.commutative ∧ J.formalReals

theorem jordan_algebra_formal_reals_closed_from_evidence (J : JordanAlgebraFormalRealsPackage) (E : JordanAlgebraFormalRealsEvidence J) : JordanAlgebraFormalRealsClosed J :=
  And.intro E.jordanIdentityClosed (And.intro E.commutativeClosed E.formalRealsClosed)

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse