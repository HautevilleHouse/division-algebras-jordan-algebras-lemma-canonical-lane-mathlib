import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibleClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closureProof

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse