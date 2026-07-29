import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure DivisionAlgebraAdmittedObject where
  carrier : Type u
  algebra : NonUnitalNonAssocRing carrier
  inverse : carrier → Option carrier
  divisionProperty : Prop
  alternativeIdentities : Prop
  jordanIdentity : Prop
  conclusion : divisionProperty ∧ alternativeIdentities ∧ jordanIdentity

structure AdmissibleClass where
  object : DivisionAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.divisionProperty ∧ A.object.alternativeIdentities ∧ A.object.jordanIdentity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse