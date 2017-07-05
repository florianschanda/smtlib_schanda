(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8999779248200796555323677239357493817806243896484375p-779 {+ 4053140246861383 -779 (5.97561e-235)}
; Y = -1.4186245035428675098643225283012725412845611572265625p77 {- 1885317158163817 77 (-2.14376e+023)}
; 1.8999779248200796555323677239357493817806243896484375p-779 + -1.4186245035428675098643225283012725412845611572265625p77 == -1.4186245035428672878197176032699644565582275390625p77
; [HW: -1.4186245035428672878197176032699644565582275390625p77] 

; mpf : - 1885317158163816 77
; mpfd: - 1885317158163816 77 (-2.14376e+023) class: Neg. norm. non-zero
; hwf : - 1885317158163816 77 (-2.14376e+023) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110100 #b1110011001100100111101000000101000111001011001000111)))
(assert (= y (fp #b1 #b10001001100 #b0110101100101010111110011011100000000101010101101001)))
(assert (= r (fp #b1 #b10001001100 #b0110101100101010111110011011100000000101010101101000)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
