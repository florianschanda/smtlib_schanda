(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.414451413524943301780467663775198161602020263671875p22 {+ 1866523231514110 22 (5.93264e+006)}
; Y = -1.5097818833176270825191522817476652562618255615234375p802 {- 2295853499749495 802 (-4.0269e+241)}
; 1.414451413524943301780467663775198161602020263671875p22 * -1.5097818833176270825191522817476652562618255615234375p802 == -1.067756559486484402299311113893054425716400146484375p825
; [HW: -1.067756559486484402299311113893054425716400146484375p825] 

; mpf : - 305148416055238 825
; mpfd: - 305148416055238 825 (-2.38901e+248) class: Neg. norm. non-zero
; hwf : - 305148416055238 825 (-2.38901e+248) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010101 #b0110101000011001011111001110001011011110110111111110)))
(assert (= y (fp #b1 #b11100100001 #b1000001010000001000100001100010011110001010001110111)))
(assert (= r (fp #b1 #b11100111000 #b0001000101011000011111100110111100010101011111000110)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
