(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4710975101576322376928374069393612444400787353515625p830 {- 2121634571201081 830 (-1.05327e+250)}
; Y = -1.009479390297828960143533549853600561618804931640625p-466 {- 42691378613002 -466 (-5.29809e-141)}
; -1.4710975101576322376928374069393612444400787353515625p830 > -1.009479390297828960143533549853600561618804931640625p-466 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111101 #b0111100010011001110110001010111101011010101000111001)))
(assert (= y (fp #b1 #b01000101101 #b0000001001101101001111011100011101010000101100001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
