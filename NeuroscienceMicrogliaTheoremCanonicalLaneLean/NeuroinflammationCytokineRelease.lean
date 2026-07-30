import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure NeuroinflammationCytokineReleasePackage where
  proInflammatoryCytokines : Type u
  antiInflammatoryCytokines : Type v
  tnfAlphaRelease : Prop
  il1BetaRelease : Prop
  il10Release : Prop
  cytokineBalance : Prop
  inflammationResolution : Prop

structure NeuroinflammationCytokineReleaseEvidence (N : NeuroinflammationCytokineReleasePackage) where
  tnfAlphaReleaseClosed : N.tnfAlphaRelease
  il1BetaReleaseClosed : N.il1BetaRelease
  il10ReleaseClosed : N.il10Release
  cytokineBalanceClosed : N.cytokineBalance
  inflammationResolutionClosed : N.inflammationResolution

def NeuroinflammationCytokineReleaseClosed (N : NeuroinflammationCytokineReleasePackage) : Prop :=
  N.tnfAlphaRelease ∧ N.il1BetaRelease ∧ N.il10Release ∧
  N.cytokineBalance ∧ N.inflammationResolution

theorem neuroinflammation_cytokine_release_closed_from_evidence
    (N : NeuroinflammationCytokineReleasePackage) (E : NeuroinflammationCytokineReleaseEvidence N) :
    NeuroinflammationCytokineReleaseClosed N := by
  exact And.intro E.tnfAlphaReleaseClosed
    (And.intro E.il1BetaReleaseClosed
      (And.intro E.il10ReleaseClosed
        (And.intro E.cytokineBalanceClosed E.inflammationResolutionClosed)))

end HautevilleHouse
end NeuroscienceMicrogliaTheoremCanonicalLaneLean