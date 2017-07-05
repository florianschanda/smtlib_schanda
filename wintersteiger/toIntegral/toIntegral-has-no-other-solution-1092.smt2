(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.614105644023607677439713370404206216335296630859375 -482 {- 2765685949590838 -482 (-1.29263e-145)}
; -1.614105644023607677439713370404206216335296630859375 -482 I == -1.0 0
; [HW: -1.0 0] 

; mpf : - 0 0
; mpfd: - 0 0 (-1) class: Neg. norm. non-zero
; hwf : - 0 0 (-1) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011101 #b1001110100110110000001110000100101011110110100110110)))
(assert (= r (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
