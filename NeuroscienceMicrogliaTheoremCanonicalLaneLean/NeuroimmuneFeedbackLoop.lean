import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure NeuroimmuneFeedbackPackage (A : AdmissibleClass) where
  proinflammatoryCytokineRelease : Prop
  antiinflammatoryResolution : Prop
  microglialPhenotypeSwitch : Prop
  feedbackStabilityMargin : Prop

structure NeuroimmuneFeedbackEvidence {A : AdmissibleClass} (N : NeuroimmuneFeedbackPackage A) where
  proinflammatoryCytokineReleaseClosed : N.proinflammatoryCytokineRelease
  antiinflammatoryResolutionClosed : N.antiinflammatoryResolution
  microglialPhenotypeSwitchClosed : N.microglialPhenotypeSwitch
  feedbackStabilityMarginClosed : N.feedbackStabilityMargin

def NeuroimmuneFeedbackClosed {A : AdmissibleClass} (N : NeuroimmuneFeedbackPackage A) : Prop :=
  N.proinflammatoryCytokineRelease ∧ N.antiinflammatoryResolution ∧
  N.microglialPhenotypeSwitch ∧ N.feedbackStabilityMargin

theorem neuroimmune_feedback_closed_from_evidence {A : AdmissibleClass}
    (N : NeuroimmuneFeedbackPackage A) (E : NeuroimmuneFeedbackEvidence N) :
    NeuroimmuneFeedbackClosed N := by
  exact And.intro E.proinflammatoryCytokineReleaseClosed
    (And.intro E.antiinflammatoryResolutionClosed
      (And.intro E.microglialPhenotypeSwitchClosed E.feedbackStabilityMarginClosed))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse