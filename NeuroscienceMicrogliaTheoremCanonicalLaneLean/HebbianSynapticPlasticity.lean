import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  weightUpdateRule : Type u
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  weightChange : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  weightUpdateRuleClosed : H.weightUpdateRule
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  weightChangeClosed : H.weightChange
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.weightUpdateRule ∧ H.preSynapticActivity ∧ H.postSynapticActivity ∧
  H.weightChange ∧ H.longTermPotentiation ∧ H.longTermDepression ∧
  H.spikeTimingDependence

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (H : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence H) :
    HebbianSynapticPlasticityClosed H := by
  exact And.intro E.weightUpdateRuleClosed
    (And.intro E.preSynapticActivityClosed
      (And.intro E.postSynapticActivityClosed
        (And.intro E.weightChangeClosed
          (And.intro E.longTermPotentiationClosed
            (And.intro E.longTermDepressionClosed E.spikeTimingDependenceClosed)))))

end HautevilleHouse
end NeuroscienceMicrogliaTheoremCanonicalLaneLean