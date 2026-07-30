import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicrogliaActivationPackage where
  purinergicSignaling : Prop
  cytokineRelease : Prop
  morphologicalChange : Prop
  phagocyticActivity : Prop

structure MicrogliaActivationEvidence (M : MicrogliaActivationPackage) where
  purinergicSignalingClosed : M.purinergicSignaling
  cytokineReleaseClosed : M.cytokineRelease
  morphologicalChangeClosed : M.morphologicalChange
  phagocyticActivityClosed : M.phagocyticActivity

def MicrogliaActivationClosed (M : MicrogliaActivationPackage) : Prop :=
  M.purinergicSignaling ∧ M.cytokineRelease ∧ M.morphologicalChange ∧ M.phagocyticActivity

theorem microglia_activation_closed_from_evidence (M : MicrogliaActivationPackage)
    (E : MicrogliaActivationEvidence M) : MicrogliaActivationClosed M := by
  exact And.intro E.purinergicSignalingClosed
    (And.intro E.cytokineReleaseClosed
      (And.intro E.morphologicalChangeClosed E.phagocyticActivityClosed))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse
