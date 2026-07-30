import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicrogliaActivationState (A : AdmissibleClass) where
  restingState : Prop
  surveillanceState : Prop
  activatedState : Prop
  phagocyticState : Prop
  stateTransitionValid : restingState → surveillanceState → activatedState → phagocyticState → Prop

structure MicrogliaActivationEvidence (A : AdmissibleClass) (S : MicrogliaActivationState A) where
  restingStateClosed : S.restingState
  surveillanceStateClosed : S.surveillanceState
  activatedStateClosed : S.activatedState
  phagocyticStateClosed : S.phagocyticState
  stateTransitionValidClosed : S.stateTransitionValid S.restingState S.surveillanceState S.activatedState S.phagocyticState

def MicrogliaActivationClosed (A : AdmissibleClass) (S : MicrogliaActivationState A) : Prop :=
  S.restingState ∧ S.surveillanceState ∧ S.activatedState ∧ S.phagocyticState ∧
  S.stateTransitionValid S.restingState S.surveillanceState S.activatedState S.phagocyticState

theorem microglia_activation_closed_from_evidence
    (A : AdmissibleClass) (S : MicrogliaActivationState A) (E : MicrogliaActivationEvidence A S) :
    MicrogliaActivationClosed A S := by
  exact And.intro E.restingStateClosed
    (And.intro E.surveillanceStateClosed
      (And.intro E.activatedStateClosed
        (And.intro E.phagocyticStateClosed E.stateTransitionValidClosed)))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse