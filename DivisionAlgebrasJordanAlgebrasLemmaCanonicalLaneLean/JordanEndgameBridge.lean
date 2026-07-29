import canonicalLaneMathlib.AdmissibleClass
import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.DivisionAlgebraClassification

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | JordanAdmittedObject _ => True
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse