import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure SynapticPruningPackage (A : AdmissibleClass) where
  complementTaggingSignal : Prop
  trogocytosisProcessModeled : Prop
  activityDependentRefinement : Prop
  pruningScaleCompatibility : Prop

structure SynapticPruningEvidence {A : AdmissibleClass} (S : SynapticPruningPackage A) where
  complementTaggingSignalClosed : S.complementTaggingSignal
  trogocytosisProcessModeledClosed : S.trogocytosisProcessModeled
  activityDependentRefinementClosed : S.activityDependentRefinement
  pruningScaleCompatibilityClosed : S.pruningScaleCompatibility

def SynapticPruningClosed {A : AdmissibleClass} (S : SynapticPruningPackage A) : Prop :=
  S.complementTaggingSignal ∧ S.trogocytosisProcessModeled ∧
  S.activityDependentRefinement ∧ S.pruningScaleCompatibility

theorem synaptic_pruning_closed_from_evidence {A : AdmissibleClass}
    (S : SynapticPruningPackage A) (E : SynapticPruningEvidence S) :
    SynapticPruningClosed S := by
  exact And.intro E.complementTaggingSignalClosed
    (And.intro E.trogocytosisProcessModeledClosed
      (And.intro E.activityDependentRefinementClosed E.pruningScaleCompatibilityClosed))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse