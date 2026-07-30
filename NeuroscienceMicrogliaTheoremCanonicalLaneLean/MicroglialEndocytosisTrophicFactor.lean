import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicroglialEndocytosisTrophicFactorPackage where
  phagocytosisReceptors : Type u
  trophicFactorRelease : Type v
  bdnfRelease : Prop
  debrisClearance : Prop
  receptorMediatedEndocytosis : Prop
  synapsePruning : Prop
  trophicSupport : Prop

structure MicroglialEndocytosisTrophicFactorEvidence (M : MicroglialEndocytosisTrophicFactorPackage) where
  bdnfReleaseClosed : M.bdnfRelease
  debrisClearanceClosed : M.debrisClearance
  receptorMediatedEndocytosisClosed : M.receptorMediatedEndocytosis
  synapsePruningClosed : M.synapsePruning
  trophicSupportClosed : M.trophicSupport

def MicroglialEndocytosisTrophicFactorClosed (M : MicroglialEndocytosisTrophicFactorPackage) : Prop :=
  M.bdnfRelease ∧ M.debrisClearance ∧ M.receptorMediatedEndocytosis ∧
  M.synapsePruning ∧ M.trophicSupport

theorem microglial_endocytosis_trophic_factor_closed_from_evidence
    (M : MicroglialEndocytosisTrophicFactorPackage) (E : MicroglialEndocytosisTrophicFactorEvidence M) :
    MicroglialEndocytosisTrophicFactorClosed M := by
  exact And.intro E.bdnfReleaseClosed
    (And.intro E.debrisClearanceClosed
      (And.intro E.receptorMediatedEndocytosisClosed
        (And.intro E.synapsePruningClosed E.trophicSupportClosed)))

end HautevilleHouse
end NeuroscienceMicrogliaTheoremCanonicalLaneLean