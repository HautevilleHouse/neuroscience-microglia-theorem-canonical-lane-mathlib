import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceMicrogliaTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

def ConstrainedMicrogliaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_microglia_endgame (A : AdmissibleClass) :
    ConstrainedMicrogliaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse