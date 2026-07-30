import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure SynapticPruningPackage where
  complementTagging : Prop
  engulfment : Prop
  pruningActive : complementTagging ∧ engulfment

def PruningClosed (P : SynapticPruningPackage) : Prop :=
  P.complementTagging ∧ P.engulfment

theorem pruning_closed_from_evidence (P : SynapticPruningPackage) (E : P.pruningActive) :
    PruningClosed P := by
  exact E

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse