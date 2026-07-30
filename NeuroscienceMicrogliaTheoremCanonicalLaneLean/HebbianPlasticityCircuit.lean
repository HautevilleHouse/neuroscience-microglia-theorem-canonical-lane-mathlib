import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure SynapsePlasticityModel where
  presynapticActivity : ℝ
  postsynapticActivity : ℝ
  weightChange : ℝ
  learningRate : ℝ

structure HebbianPlasticityPackage where
  model : SynapsePlasticityModel
  correlationDetected : Prop
  longTermPotentiationPossible : Prop
  longTermDepressionPossible : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  correlationDetectedClosed : H.correlationDetected
  longTermPotentiationPossibleClosed : H.longTermPotentiationPossible
  longTermDepressionPossibleClosed : H.longTermDepressionPossible

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.correlationDetected ∧ H.longTermPotentiationPossible ∧ H.longTermDepressionPossible

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.correlationDetectedClosed
    (And.intro E.longTermPotentiationPossibleClosed E.longTermDepressionPossibleClosed)

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse