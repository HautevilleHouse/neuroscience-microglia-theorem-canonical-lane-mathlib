import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure HodgkinHuxleyIonChannelPackage where
  sodiumChannel : Type u
  potassiumChannel : Type v
  leakChannel : Type w
  activationGating : Prop
  inactivationGating : Prop
  conductanceModel : Prop

structure HodgkinHuxleyIonChannelEvidence (H : HodgkinHuxleyIonChannelPackage) where
  activationGatingClosed : H.activationGating
  inactivationGatingClosed : H.inactivationGating
  conductanceModelClosed : H.conductanceModel

def HodgkinHuxleyIonChannelClosed (H : HodgkinHuxleyIonChannelPackage) : Prop :=
  H.activationGating ∧ H.inactivationGating ∧ H.conductanceModel

theorem hodgkin_huxley_ion_channel_closed_from_evidence
    (H : HodgkinHuxleyIonChannelPackage) (E : HodgkinHuxleyIonChannelEvidence H) :
    HodgkinHuxleyIonChannelClosed H := by
  exact And.intro E.activationGatingClosed
    (And.intro E.inactivationGatingClosed E.conductanceModelClosed)

end HautevilleHouse
end NeuroscienceMicrogliaTheoremCanonicalLaneLean