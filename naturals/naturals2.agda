module naturals2 where
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)


data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ




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
