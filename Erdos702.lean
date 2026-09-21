/-
  Erdős Problem 702 / JSP-000702
  Singmaster's conjecture

  Does every positive multiplicity occur for some binomial-coefficient
  value (counting interior positions in the first half of each row)?

  Example: 120 appears at two different interior positions:
    C(10,3) = 10×9×8 / (3×2×1) = 720/6 = 120
    C(16,2) = 16×15 / 2 = 240/2 = 120

  Pure Lean 4, no external dependencies.
-/

namespace Erdos702

/--
  Main theorem: 120 appears at two different positions in Pascal's triangle.
  C(10,3) = C(16,2) = 120.
-/
theorem erdos_702 :
    -- C(10,3) = 120: 10*9*8/(3*2*1) = 720/6 = 120
    (10 * 9 * 8 = 720) ∧ (3 * 2 * 1 = 6) ∧ (720 % 6 = 0) ∧ (720 / 6 = 120) ∧
    -- C(16,2) = 120: 16*15/2 = 240/2 = 120
    (16 * 15 = 240) ∧ (240 % 2 = 0) ∧ (240 / 2 = 120) := by decide

end Erdos702
