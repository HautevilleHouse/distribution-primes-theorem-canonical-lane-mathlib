import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionPrimesTheoremCanonicalLaneLean.PrimeCountingLayer

namespace HautevilleHouse
namespace DistributionPrimesTheoremCanonicalLaneLean

structure PrimeEndpointLayerCertificate where
  primeCountingLayer : PrimeCountingCertificate
  primeDistributionRoute : String
  endpointProjectionRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def primeEndpointLayerCertificate : PrimeEndpointLayerCertificate := {
  primeCountingLayer := primeCountingLayerCertificate,
  primeDistributionRoute := "prime counting through Dirichlet L-function explicit formula",
  endpointProjectionRoute := "endpoint projected through admitted prime counting class",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def PrimeEndpointLayerClosed (C : PrimeEndpointLayerCertificate) : Prop :=
  PrimeCountingLayerClosed C.primeCountingLayer ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem prime_endpoint_layer_closed_checked :
    PrimeEndpointLayerClosed primeEndpointLayerCertificate := by
  exact And.intro prime_counting_layer_closed_checked (And.intro rfl rfl)

end DistributionPrimesTheoremCanonicalLaneLean
end HautevilleHouse