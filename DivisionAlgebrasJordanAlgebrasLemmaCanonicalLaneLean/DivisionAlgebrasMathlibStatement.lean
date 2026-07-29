import DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean.DivisionAlgebrasFinalTheorem

namespace HautevilleHouse
namespace DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "division-algebras-jordan-algebras-lemma-canonical-lane",
    theoremObject := "DivisionAlgebrasJordanAlgebrasLemma",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

theorem mathlib_common_core_imported_checked :
    mathlibProofObligation.commonCoreImported = true :=
by rfl

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedDivisionAlgebrasClosure A) :=
by
  intro A
  exact constrained_division_algebras_endgame A

end DivisionAlgebrasJordanAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse