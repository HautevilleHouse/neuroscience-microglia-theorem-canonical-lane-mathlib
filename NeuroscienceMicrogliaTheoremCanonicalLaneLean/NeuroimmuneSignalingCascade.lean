import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure CytokineSignalModel where
  ligand : String
  receptor : String
  intracellularCascade : Prop
  geneExpressionChange : Prop

structure NeuroimmuneSignalingPackage where
  model : CytokineSignalModel
  microgliaActivationTriggered : Prop
  synapseModulation : Prop
  neuroprotectionMechanism : Prop

structure NeuroimmuneSignalingEvidence (N : NeuroimmuneSignalingPackage) where
  microgliaActivationTriggeredClosed : N.microgliaActivationTriggered
  synapseModulationClosed : N.synapseModulation
  neuroprotectionMechanismClosed : N.neuroprotectionMechanism

def NeuroimmuneSignalingClosed (N : NeuroimmuneSignalingPackage) : Prop :=
  N.microgliaActivationTriggered ∧ N.synapseModulation ∧ N.neuroprotectionMechanism

theorem neuroimmune_signaling_closed_from_evidence (N : NeuroimmuneSignalingPackage) (E : NeuroimmuneSignalingEvidence N) :
    NeuroimmuneSignalingClosed N := by
  exact And.intro E.microgliaActivationTriggeredClosed
    (And.intro E.synapseModulationClosed E.neuroprotectionMechanismClosed)

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse