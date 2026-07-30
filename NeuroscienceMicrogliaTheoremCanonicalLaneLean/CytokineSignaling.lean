import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure CytokinePackage where
  tnfAlpha : Prop
  il10 : Prop
  cx3cl1 : Prop
  signalingActive : tnfAlpha ∨ il10 ∨ cx3cl1

def CytokineClosed (C : CytokinePackage) : Prop :=
  C.tnfAlpha ∨ C.il10 ∨ C.cx3cl1

theorem cytokine_closed_from_signaling (C : CytokinePackage) :
    CytokineClosed C := by
  exact C.signalingActive

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse