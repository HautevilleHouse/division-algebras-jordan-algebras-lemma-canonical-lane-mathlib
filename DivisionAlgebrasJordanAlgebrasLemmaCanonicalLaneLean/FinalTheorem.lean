import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

def ConstrainedDivisionAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_division_algebra_endgame (A : AdmissibleClass) :
    ConstrainedDivisionAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse