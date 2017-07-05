(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3572006681405401895545992374536581337451934814453125p874 {- 1608688795934229 874 (-1.70947e+263)}
; Y = 1.4738478525176741396052193522336892783641815185546875p-66 {+ 2134021012028907 -66 (1.99744e-020)}
; -1.3572006681405401895545992374536581337451934814453125p874 * 1.4738478525176741396052193522336892783641815185546875p-66 == -1.000153645087243692302081399247981607913970947265625p809
; [HW: -1.000153645087243692302081399247981607913970947265625p809] 

; mpf : - 691955957658 809
; mpfd: - 691955957658 809 (-3.41455e+243) class: Neg. norm. non-zero
; hwf : - 691955957658 809 (-3.41455e+243) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101001 #b0101101101110001100000001100001111000101111000010101)))
(assert (= y (fp #b0 #b01110111101 #b0111100101001110000101111100010111010111110111101011)))
(assert (= r (fp #b1 #b11100101000 #b0000000000001010000100011011110010011111111110011010)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
