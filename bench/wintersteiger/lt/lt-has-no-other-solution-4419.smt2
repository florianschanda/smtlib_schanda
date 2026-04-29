(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.384238034135370387645025402889586985111236572265625p-45 {- 1730454267353626 -45 (-3.93424e-014)}
; Y = -1.508400002355062330394730452098883688449859619140625p-691 {- 2289630061161418 -691 (-1.46821e-208)}
; -1.384238034135370387645025402889586985111236572265625p-45 < -1.508400002355062330394730452098883688449859619140625p-691 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010010 #b0110001001011101011011000111111001111101101000011010)))
(assert (= y (fp #b1 #b00101001100 #b1000001000100110100000001010011101100110101111001010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
