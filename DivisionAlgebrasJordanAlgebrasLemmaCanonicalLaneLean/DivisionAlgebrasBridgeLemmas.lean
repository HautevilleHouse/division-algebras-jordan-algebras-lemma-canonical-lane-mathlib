import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.DivisionAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.divisionProperty ∧ A.object.alternativeIdentities ∧ A.object.jordanIdentity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
by
  exact A.object.conclusion

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse