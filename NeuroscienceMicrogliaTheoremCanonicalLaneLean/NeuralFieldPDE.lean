import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure NeuralFieldPDEPackage (A : AdmissibleClass) where
  synaptodendriticKernel : Type u
  firingRateFunction : Type v
  delayDistributed : Prop
  localExistenceSolved : Prop
  parameterWellPosed : Prop

structure NeuralFieldPDEEvidence {A : AdmissibleClass} (F : NeuralFieldPDEPackage A) where
  delayDistributedClosed : F.delayDistributed
  localExistenceSolvedClosed : F.localExistenceSolved
  parameterWellPosedClosed : F.parameterWellPosed

def NeuralFieldPDEClosed {A : AdmissibleClass} (F : NeuralFieldPDEPackage A) : Prop :=
  F.delayDistributed ∧ F.localExistenceSolved ∧ F.parameterWellPosed

theorem neural_field_pde_closed_from_evidence {A : AdmissibleClass}
    (F : NeuralFieldPDEPackage A) (E : NeuralFieldPDEEvidence F) :
    NeuralFieldPDEClosed F := by
  exact And.intro E.delayDistributedClosed
    (And.intro E.localExistenceSolvedClosed E.parameterWellPosedClosed)

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse