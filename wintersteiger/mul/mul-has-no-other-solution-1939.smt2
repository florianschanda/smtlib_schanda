(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6047470486040189552312540399725548923015594482421875p-529 {+ 2723538582746467 -529 (9.13143e-160)}
; Y = -0.6562145617280197296139476748066954314708709716796875p-1022 {- 2955327655673403 -1023 (-1.46013e-308)}
; 1.6047470486040189552312540399725548923015594482421875p-529 * -0.6562145617280197296139476748066954314708709716796875p-1022 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111101110 #b1001101011010000101100111101110000011011010101100011)))
(assert (= y (fp #b1 #b00000000000 #b1010011111111101101011010111000111000111111000111011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
