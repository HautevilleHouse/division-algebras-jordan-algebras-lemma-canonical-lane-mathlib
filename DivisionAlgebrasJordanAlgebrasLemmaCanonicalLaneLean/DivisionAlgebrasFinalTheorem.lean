import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.DivisionAlgebrasGateLemmas

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

def ConstrainedDivisionAlgebrasClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_division_algebras_endgame (A : AdmissibleClass) :
    ConstrainedDivisionAlgebrasClosure A :=
by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse