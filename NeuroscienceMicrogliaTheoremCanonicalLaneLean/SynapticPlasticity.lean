import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure SynapticPlasticityPackage where
  longTermPotentiation : Prop
  longTermDepression : Prop
  hebbianLearning : Prop
  spikeTimingDependentPlasticity : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  longTermPotentiationClosed : S.longTermPotentiation
  longTermDepressionClosed : S.longTermDepression
  hebbianLearningClosed : S.hebbianLearning
  spikeTimingDependentPlasticityClosed : S.spikeTimingDependentPlasticity

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.longTermPotentiation ∧ S.longTermDepression ∧ S.hebbianLearning ∧ S.spikeTimingDependentPlasticity

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed
      (And.intro E.hebbianLearningClosed E.spikeTimingDependentPlasticityClosed))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse
