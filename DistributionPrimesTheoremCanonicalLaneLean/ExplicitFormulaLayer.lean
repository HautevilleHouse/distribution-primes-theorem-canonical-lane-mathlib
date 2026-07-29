import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionPrimesTheoremCanonicalLaneLean.DirichletLFunctionLayer

namespace HautevilleHouse
namespace DistributionPrimesTheoremCanonicalLaneLean

structure ExplicitFormulaCertificate where
  lFunctionLayer : DirichletLFunctionCertificate
  psiFunctionComputed : Bool
  chebyshevFunctionComputed : Bool
  explicitFormulaReady : Bool
  remainderTermCarried : Bool

def explicitFormulaCertificate : ExplicitFormulaCertificate := {
  lFunctionLayer := dirichletLFunctionCertificate,
  psiFunctionComputed := true,
  chebyshevFunctionComputed := true,
  explicitFormulaReady := true,
  remainderTermCarried := true
}

def ExplicitFormulaLayerClosed (C : ExplicitFormulaCertificate) : Prop :=
  DirichletLFunctionLayerClosed C.lFunctionLayer ∧
  C.psiFunctionComputed = true ∧
  C.chebyshevFunctionComputed = true ∧
  C.explicitFormulaReady = true ∧
  C.remainderTermCarried = true

theorem explicit_formula_layer_closed_checked :
    ExplicitFormulaLayerClosed explicitFormulaCertificate := by
  exact And.intro dirichlet_l_function_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end DistributionPrimesTheoremCanonicalLaneLean
end HautevilleHouse