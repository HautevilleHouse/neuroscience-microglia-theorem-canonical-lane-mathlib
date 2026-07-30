import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicrogliaAdmittedObject where
  cellType : String
  activationState : String
  synapseInteraction : Prop
  cytokineRelease : Prop
  phagocytosisCapacity : Prop
  conclusion : cellType = "Microglia" ∧ activationState ∈ {"Resting", "Activated"}

structure AdmissibleClass where
  object : MicrogliaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse