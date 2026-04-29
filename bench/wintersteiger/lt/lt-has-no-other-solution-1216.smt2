(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.961972479348072173621631009154953062534332275390625p837 {+ 4332338899532650 837 (1.79804e+252)}
; Y = 1.4567753054106880039597626819158904254436492919921875p-580 {+ 2057133095239619 -580 (3.68125e-175)}
; 1.961972479348072173621631009154953062534332275390625p837 < 1.4567753054106880039597626819158904254436492919921875p-580 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000100 #b1111011001000011110101000001001001110011101101101010)))
(assert (= y (fp #b0 #b00110111011 #b0111010011101111001110011111011001011011111111000011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
