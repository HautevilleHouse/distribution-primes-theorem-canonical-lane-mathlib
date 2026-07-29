import DistributionPrimesTheoremCanonicalLaneLean.ExplicitFormulaBridge
import DistributionPrimesTheoremCanonicalLaneLean.SieveEndpointLayer

namespace HautevilleHouse
namespace DistributionPrimesTheoremCanonicalLaneLean

open HautevilleHouse.DistributionPrimesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExplicitFormulaBridgeClosed explicitFormulaBridgeCertificate

def gateClosed (A : AdmissibleClass) : Prop :=
  SieveEndpointLayerClosed sieveEndpointCertificate

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact explicit_formula_bridge_closed_checked

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact sieve_endpoint_layer_closed_checked

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionPrimesTheoremCanonicalLaneLean
end HautevilleHouse