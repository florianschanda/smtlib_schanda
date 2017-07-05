(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9247134156882272915112253031111322343349456787109375p35 {+ 4164538994317999 35 (6.61326e+010)}
; Y = 1.247203520812988575272584057529456913471221923828125p-962 {+ 1113305684218050 -962 (3.1995e-290)}
; 1.9247134156882272915112253031111322343349456787109375p35 < 1.247203520812988575272584057529456913471221923828125p-962 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100010 #b1110110010111010000001001011011010001101101010101111)))
(assert (= y (fp #b0 #b00000111101 #b0011111101001000101110101101110101011001000011000010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
