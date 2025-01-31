module Int1 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- int a b represents (a - b).
  int : Nat → Nat → Int

-- given i, return i + 1.
isuc : Int → Int
isuc (int a b) = int (suc a) b

-- given i, return i - 1.
ipred : Int → Int
ipred (int a b)= int a (suc b)

-- given i, return -i.
ineg : Int → Int
ineg (int a b)= int b a

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (int i j) (int k l)= int (plus i k) (plus j l)



-- given i & j, return i - j.
iminus : Int → Int → Int
iminus (int i j) (int k l) = int (plus i l) (plus k j)

-- given i & j, return i * j.
itimes : Int → Int → Int
--I had to use chatgbt to further understand how to do multiplication. My understanding is still questionable. Could you show how 
--you would approach this problem?
itimes (int i j) (int k l) = int (plus (times i k) (times j l))  (plus (times j k) (times i l))
--first i did int (i j) (k l)
--then I did distributive property and then rearranged it so it'll be (ik + jl) - (jk + il)
-- ^^I got lost on this step on how to change the subtraction sign to the multiplication sign. How does that happen?

--also Ivy pointed out I was missing "times", which helped the itimes work