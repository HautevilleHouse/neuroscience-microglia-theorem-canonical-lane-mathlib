import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure ClockPackage where
  sourceClocks : Prop
  targetRate : Prop
  phaseLocked : sourceClocks ∧ targetRate

def ClockClosed (C : ClockPackage) : Prop :=
  C.sourceClocks ∧ C.targetRate

theorem clock_closed_from_evidence (C : ClockPackage) (E : C.phaseLocked) :
    ClockClosed C := by
  exact E

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse