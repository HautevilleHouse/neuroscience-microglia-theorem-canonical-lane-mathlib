import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicroglialStatePhenotypePackage where
  baseExpression : Type u
  activationMarker : Type v
  morphology : Type w
  ramifiedState : Prop
  amoeboidState : Prop
  intermediateState : Prop
  phenotypeTransition : Prop

structure MicroglialStatePhenotypeEvidence (P : MicroglialStatePhenotypePackage) where
  ramifiedStateClosed : P.ramifiedState
  amoeboidStateClosed : P.amoeboidState
  intermediateStateClosed : P.intermediateState
  phenotypeTransitionClosed : P.phenotypeTransition

def MicroglialStatePhenotypeClosed (P : MicroglialStatePhenotypePackage) : Prop :=
  P.ramifiedState ∧ P.amoeboidState ∧ P.intermediateState ∧ P.phenotypeTransition

theorem microglial_state_phenotype_closed_from_evidence
    (P : MicroglialStatePhenotypePackage) (E : MicroglialStatePhenotypeEvidence P) :
    MicroglialStatePhenotypeClosed P := by
  exact And.intro E.ramifiedStateClosed
    (And.intro E.amoeboidStateClosed
      (And.intro E.intermediateStateClosed E.phenotypeTransitionClosed))

end HautevilleHouse
end NeuroscienceMicrogliaTheoremCanonicalLaneLean