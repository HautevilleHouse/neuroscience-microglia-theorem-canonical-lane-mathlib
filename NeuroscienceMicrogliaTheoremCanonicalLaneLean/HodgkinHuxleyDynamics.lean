import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ
  sodiumChannelOpen : ℝ
  potassiumChannelOpen : ℝ
  inactivationGate : ℝ
  stimulationCurrent : ℝ

structure HodgkinHuxleyPackage where
  model : HodgkinHuxleyModel
  actionPotentialExists : Prop
  refractoryPeriod : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  actionPotentialExistsClosed : H.actionPotentialExists
  refractoryPeriodClosed : H.refractoryPeriod

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.actionPotentialExists ∧ H.refractoryPeriod

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.actionPotentialExistsClosed E.refractoryPeriodClosed

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse