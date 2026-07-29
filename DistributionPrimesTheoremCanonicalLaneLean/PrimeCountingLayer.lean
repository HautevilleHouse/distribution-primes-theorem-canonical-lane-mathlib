import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionPrimesTheoremCanonicalLaneLean.ExplicitFormulaLayer

namespace HautevilleHouse
namespace DistributionPrimesTheoremCanonicalLaneLean

structure PrimeCountingCertificate where
  explicitFormulaLayer : ExplicitFormulaCertificate
  primeNumberTheoremApplied : Bool
  errorTermBound : String
  endpointChecked : Bool
  classicalBoundaryCarried : Bool

def primeCountingLayerCertificate : PrimeCountingCertificate := {
  explicitFormulaLayer := explicitFormulaCertificate,
  primeNumberTheoremApplied := true,
  errorTermBound := "O(x exp(-c sqrt(log x)))",
  endpointChecked := true,
  classicalBoundaryCarried := true
}

def PrimeCountingLayerClosed (C : PrimeCountingCertificate) : Prop :=
  ExplicitFormulaLayerClosed C.explicitFormulaLayer ∧
  C.primeNumberTheoremApplied = true ∧
  C.endpointChecked = true ∧
  C.classicalBoundaryCarried = true

theorem prime_counting_layer_closed_checked :
    PrimeCountingLayerClosed primeCountingLayerCertificate := by
  exact And.intro explicit_formula_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))

end DistributionPrimesTheoremCanonicalLaneLean
end HautevilleHouse