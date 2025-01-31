module Int2 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- (+ n) represents positive n.
  + : Nat → Int
  -- (- n) represents negative n.
  - : Nat → Int
  -- 0 can be represented as (+ zero) or (- zero).

-- given i, return i + 1.
isuc : Int → Int
isuc (+ n) = + (suc n)
isuc (- zero) = + (suc zero)
isuc (- (suc n)) = - n

-- given i, return i - 1.
ipred : Int → Int
ipred (+ i) = - (suc i) 
ipred (- i) = - (suc i) 

-- given i, return -i.
ineg : Int → Int
ineg (- i)= - (suc i)
ineg (+ i) = - (suc i)

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (+ i ) (+ j) = + (plus i j)
iplus (- i ) (+ j) = + (plus i j)
iplus (+ i ) (- j) = + (plus j i)
iplus (- i ) (- j) = - (plus i j)


-- given i & j, return i - j.
iminus : Int → Int → Int
-- I don't really understand why j isn't a valid argument?
iminus (+ i) (+ j)= + (i j)
-- I also can't get rid of this zero
iminus (- i) (- j)= - (i j)
iminus (- i) (+ j)= + (j i)
iminus (- i) (+ j)= - (i j)

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (+ i) (+ j)= + (times i j)
itimes (- i) (- j)= + (times i j)
itimes (- i) (+ j)= - (times i j)
itimes (+ i) (- j)= - (times i j)


