import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaTheoremCanonicalLaneLean

structure MicrogliaState where
  ramified : Prop
  surveillance : Prop
  activationState : Prop

structure AdmittedMicrogliaObject where
  state : MicrogliaState
  morphologyStable : Prop
  cytokineProfile : Props
  conclusion : morphologyStable ∧ cytokineProfile

def MicrogliaWitnessClosed (O : AdmittedMicrogliaObject) : Prop :=
  O. conclusion

end NeuroscienceMicrogliaTheoremCanonicalLaneLean
end HautevilleHouse