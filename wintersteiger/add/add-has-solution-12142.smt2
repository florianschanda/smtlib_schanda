(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6513126218095408592745343412389047443866729736328125p424 {- 2933251280883149 424 (-7.15398e+127)}
; Y = 1.3322303754354154481376326657482422888278961181640625p17 {+ 1496232595012097 17 (174618)}
; -1.6513126218095408592745343412389047443866729736328125p424 + 1.3322303754354154481376326657482422888278961181640625p17 == -1.6513126218095408592745343412389047443866729736328125p424
; [HW: -1.6513126218095408592745343412389047443866729736328125p424] 

; mpf : - 2933251280883149 424
; mpfd: - 2933251280883149 424 (-7.15398e+127) class: Neg. norm. non-zero
; hwf : - 2933251280883149 424 (-7.15398e+127) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110100111 #b1010011010111100011011001000101000100100110111001101)))
(assert (= y (fp #b0 #b10000010000 #b0101010100001101000011001100010100111011101000000001)))
(assert (= r (fp #b1 #b10110100111 #b1010011010111100011011001000101000100100110111001101)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
