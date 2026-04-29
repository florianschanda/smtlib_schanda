(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9548969198585155471192820186843164265155792236328125p-197 {+ 4300473412452045 -197 (9.73228e-060)}
; Y = -1.14322377231962146737487273639999330043792724609375p892 {- 645022527649244 892 (-3.77474e+268)}
; 1.9548969198585155471192820186843164265155792236328125p-197 / -1.14322377231962146737487273639999330043792724609375p892 == -zero
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
(assert (= x (fp #b0 #b01100111010 #b1111010001110100000111111110000111010111111011001101)))
(assert (= y (fp #b1 #b11101111011 #b0010010010101010010100000010101000011111010111011100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
