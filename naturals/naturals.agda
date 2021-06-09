module naturals where
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)


data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

seven : ℕ
seven = suc (suc (suc (suc (suc (suc (suc zero))))))


{-# BUILTIN NATURAL ℕ #-}

_+_         : ℕ → ℕ → ℕ
zero    + n = n
(suc m) + n = suc (m + n)

_ : 3 + 4 ≡ 7
_ =
  begin
    3 + 4
  ≡⟨⟩
    2 + 5
  ≡⟨⟩
    1 + 6
  ≡⟨⟩
    0 + 7
  ≡⟨⟩
    7
  ∎

_ : 2 + 3 ≡ 5
_ = refl


_*_         : ℕ → ℕ → ℕ
zero    * n = zero
(suc m) * n = (m * n) + n

_ : 3 * 4 ≡ 12
_ =
  begin
    3 * 4
  ≡⟨⟩
    (2 * 4) + 4
  ≡⟨⟩
    ((1 * 4) + 4) + 4
  ≡⟨⟩
    (((0 * 4) + 4) + 4) + 4
  ≡⟨⟩
    ((0 + 4) + 4) + 4
  ≡⟨⟩
    12
  ∎


_∸_               : ℕ → ℕ → ℕ
n       ∸ zero    = n
zero    ∸ (suc n) = zero
(suc m) ∸ (suc n) = m ∸ n

_ : 3 ∸ 2 ≡ 1
_ =
  begin
    3 ∸ 2
  ≡⟨⟩
    2 ∸ 1
  ≡⟨⟩
    1 ∸ 0
  ≡⟨⟩
    1
  ∎


_^_               : ℕ → ℕ → ℕ
n       ^ zero    = suc zero
zero    ^ (suc n) = zero
m       ^ (suc n) = (m ^ n) * m

_ : 3 ^ 4 ≡ 81
_ =
  begin
    3 ^ 4
  ≡⟨⟩
    (3 ^ 3) * 3
  ≡⟨⟩
    ((3 ^ 2) * 3) * 3
  ≡⟨⟩
    (((3 ^ 1) * 3) * 3) * 3
  ≡⟨⟩
    ((((3 ^ 0) * 3) * 3) * 3) * 3
  ≡⟨⟩
    (((1 * 3) * 3) * 3) * 3
  ≡⟨⟩
    ((3 * 3) * 3) * 3
  ≡⟨⟩
    81
  ∎


infixl 6 _+_ _∸_
infixl 7 _*_

