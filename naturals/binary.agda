module binary where
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)


data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

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



data Bin : Set where
  ⟨⟩     : Bin
  _O     : Bin → Bin
  _I     : Bin → Bin

inc       : Bin → Bin
inc ⟨⟩    = ⟨⟩ I
inc (x O) = x I
inc (x I) = (inc x) O

_ : inc (⟨⟩ I O I I) ≡ ⟨⟩ I I O O
_ = refl

_ : inc (⟨⟩ I) ≡ ⟨⟩ I O
_ = refl

_ : inc (⟨⟩ I O) ≡ ⟨⟩ I I
_ = refl

_ : inc (⟨⟩ I I) ≡ ⟨⟩ I O O
_ = refl

to : ℕ → Bin
to zero = ⟨⟩
to (suc x) = inc (to x)


_ : to (suc zero) ≡ ⟨⟩ I
_ = refl

_ : to (suc (suc zero)) ≡ ⟨⟩ I O
_ = refl

_ : to (suc (suc (suc zero))) ≡ ⟨⟩ I I
_ = refl


from : Bin → ℕ
from ⟨⟩ = zero
from (x O) = (from x) * 2
from (x I) = ((from x) * 2) + 1

_ : from (⟨⟩ O) ≡ zero
_ = refl

_ : from (⟨⟩ I) ≡ suc zero
_ = refl

_ : from (⟨⟩ I O) ≡ suc (suc zero)
_ = refl

_ : from (⟨⟩ I I) ≡ 3
_ = refl

_ : from (⟨⟩ I O O) ≡ 4
_ = refl
