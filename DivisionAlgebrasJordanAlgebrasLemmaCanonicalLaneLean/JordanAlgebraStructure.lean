import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure JordanAlgebra (k : Type) [CommRing k] where
  carrier : Type u
  _ : Algebra k carrier
  mul : carrier → carrier → carrier
  JordanIdentity : ∀ a b : carrier, mul (mul a (mul b a)) (mul a b) = mul a (mul b (mul a (mul a b)))

structure AdmittedObject where
  space : Type u
  _ : TopologicalSpace space
  jordanAlgebra : JordanAlgebra ℝ space
  closureProof : AdmissibleClosure space

def AdmissibleClosure (R : Type) : Prop := True

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse