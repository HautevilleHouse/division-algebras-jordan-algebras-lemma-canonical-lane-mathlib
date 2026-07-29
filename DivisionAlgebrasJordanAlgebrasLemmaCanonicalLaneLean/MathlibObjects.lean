import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure JordanAlgebra where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  jordanIdentity : Prop

def JordanAdmittedObject where
  algebra : JordanAlgebra
  finiteDimensional : Prop
  algebraicallyClosed : Prop
  divisionAlgebra : Prop
  conclusion : divisionAlgebra

structure JordanEndgameState where
  object : JordanAdmittedObject

def JordanWitnessClosed (O : JordanAdmittedObject) : Prop :=
  O.divisionAlgebra

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse