import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure HodgkinHuxleyModel (A : AdmissibleClass) where
  membranePotential : ℝ
  sodiumChannelOpen : Prop
  potassiumChannelOpen : Prop
  leakageCurrent : Prop
  actionPotentialGenerated : Prop
  hodgkinHuxleyEquations : sodiumChannelOpen → potassiumChannelOpen → leakageCurrent → actionPotentialGenerated → Prop

structure HodgkinHuxleyEvidence (A : AdmissibleClass) (H : HodgkinHuxleyModel A) where
  membranePotentialClosed : H.membranePotential = 0.0
  sodiumChannelOpenClosed : H.sodiumChannelOpen
  potassiumChannelOpenClosed : H.potassiumChannelOpen
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGeneratedClosed : H.actionPotentialGenerated
  hodgkinHuxleyEquationsClosed : H.hodgkinHuxleyEquations H.sodiumChannelOpen H.potassiumChannelOpen H.leakageCurrent H.actionPotentialGenerated

def HodgkinHuxleyClosed (A : AdmissibleClass) (H : HodgkinHuxleyModel A) : Prop :=
  H.membranePotential = 0.0 ∧ H.sodiumChannelOpen ∧ H.potassiumChannelOpen ∧ H.leakageCurrent ∧
  H.actionPotentialGenerated ∧ H.hodgkinHuxleyEquations H.sodiumChannelOpen H.potassiumChannelOpen H.leakageCurrent H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence
    (A : AdmissibleClass) (H : HodgkinHuxleyModel A) (E : HodgkinHuxleyEvidence A H) :
    HodgkinHuxleyClosed A H := by
  exact And.intro E.membranePotentialClosed
    (And.intro E.sodiumChannelOpenClosed
      (And.intro E.potassiumChannelOpenClosed
        (And.intro E.leakageCurrentClosed
          (And.intro E.actionPotentialGeneratedClosed E.hodgkinHuxleyEquationsClosed))))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse