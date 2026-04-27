import VersoManual
import TPiL.Ch01_Intro
import TPiL.Ch02_DependentTypeTheory
import TPiL.Ch03_PropositionsAndProofs
import TPiL.Ch04_QuantifiersEquality
import TPiL.Ch05_Tactics
import TPiL.Ch06_InteractingWithLean
import TPiL.Ch07_InductiveTypes
import TPiL.Ch08_InductionAndRecursion
import TPiL.Ch09_StructuresAndRecords
import TPiL.Ch10_TypeClasses
import TPiL.Ch11_Conv
import TPiL.Ch12_AxiomsComputation

open Verso.Genre Manual
open Verso Code External

open Verso Doc Elab in
open Lean (quote) in
@[role_expander versionString]
def versionString : RoleExpander
  | #[], #[] => do
    let version ← IO.FS.readFile "../examples/lean-toolchain"
    let version := version.dropPrefix "leanprover/lean4:" |>.dropPrefix "v" |>.trimAscii |>.copy
    pure #[← ``(Verso.Doc.Inline.code $(quote version))]
  | _, _ => throwError "Unexpected arguments"


#doc (Manual) "Theorem Proving in Lean 4" =>

%%%
authors := ["Jeremy Avigad", "Leonardo de Moura", "Soonho Kong", "Sebastian Ullrich"]
authorshipNote := some "with contributions from the Lean Community"
%%%


This version of the text assumes you’re using Lean 4 (specifically {versionString}[]). See the
[Quickstart section](https://lean-lang.org/documentation/setup/) of
the Lean documentation to install Lean. The first version of this book was
written for Lean 2, and the Lean 3 version is available
[here](https://leanprover.github.io/theorem_proving_in_lean/).

{include 1 TPiL.Ch01_Intro}

{include 1 TPiL.Ch02_DependentTypeTheory}

{include 1 TPiL.Ch03_PropositionsAndProofs}

{include 1 TPiL.Ch04_QuantifiersEquality}

{include 1 TPiL.Ch05_Tactics}

{include 1 TPiL.Ch06_InteractingWithLean}

{include 1 TPiL.Ch07_InductiveTypes}

{include 1 TPiL.Ch08_InductionAndRecursion}

{include 1 TPiL.Ch09_StructuresAndRecords}

{include 1 TPiL.Ch10_TypeClasses}

{include 1 TPiL.Ch11_Conv}

{include 1 TPiL.Ch12_AxiomsComputation}
