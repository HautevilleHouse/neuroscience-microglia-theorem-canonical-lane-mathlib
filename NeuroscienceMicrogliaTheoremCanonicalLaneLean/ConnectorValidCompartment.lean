import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure ConnectomePackage (A : AdmissibleClass) where
  adjacencyMatrixSymmetric : Prop
  weightDistributionPlausible : Prop
  smallWorldProperty : Prop
  hubClassificationKnown : Prop

structure ConnectomeEvidence {A : AdmissibleClass} (C : ConnectomePackage A) where
  adjacencyMatrixSymmetricClosed : C.adjacencyMatrixSymmetric
  weightDistributionPlausibleClosed : C.weightDistributionPlausible
  smallWorldPropertyClosed : C.smallWorldProperty
  hubClassificationKnownClosed : C.hubClassificationKnown

def ConnectomeClosed {A : AdmissibleClass} (C : ConnectomePackage A) : Prop :=
  C.adjacencyMatrixSymmetric ∧ C.weightDistributionPlausible ∧
  C.smallWorldProperty ∧ C.hubClassificationKnown

theorem connectome_closed_from_evidence {A : AdmissibleClass}
    (C : ConnectomePackage A) (E : ConnectomeEvidence C) : ConnectomeClosed C := by
  exact And.intro E.adjacencyMatrixSymmetricClosed
    (And.intro E.weightDistributionPlausibleClosed
      (And.intro E.smallWorldPropertyClosed E.hubClassificationKnownClosed))

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse