import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicrogliaActivationPackage (A : AdmissibleClass) where
  hhGateVoltageClamp : Prop
  hebbianLTPTrigger : Prop
  calciumWaveCoupling : Prop
  cytokineReleaseModel : Prop

structure MicrogliaActivationEvidence {A : AdmissibleClass} (P : MicrogliaActivationPackage A) where
  hhGateVoltageClampClosed : P.hhGateVoltageClamp
  hebbianLTPTriggerClosed : P.hebbianLTPTrigger
  calciumWaveCouplingClosed : P.calciumWaveCoupling
  cytokineReleaseModelClosed : P.cytokineReleaseModel

def MicrogliaActivationClosed {A : AdmissibleClass} (P : MicrogliaActivationPackage A) : Prop :=
  P.hhGateVoltageClamp ∧ P.hebbianLTPTrigger ∧ P.calciumWaveCoupling ∧ P.cytokineReleaseModel

theorem microglia_activation_closed_from_evidence {A : AdmissibleClass}
    (P : MicrogliaActivationPackage A) (E : MicrogliaActivationEvidence P) :
    MicrogliaActivationClosed P := by
  exact And.intro E.hhGateVoltageClampClosed
    (And.intro E.hebbianLTPTriggerClosed
      (And.intro E.calciumWaveCouplingClosed E.cytokineReleaseModelClosed))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse