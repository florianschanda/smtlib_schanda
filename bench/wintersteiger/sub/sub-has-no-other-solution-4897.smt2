(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.9719888898341013661053011674084700644016265869140625p439 {+ 4377448802065121 439 (2.79945e+132)}
; -zero - 1.9719888898341013661053011674084700644016265869140625p439 == -1.9719888898341013661053011674084700644016265869140625p439
; [HW: -1.9719888898341013661053011674084700644016265869140625p439] 

; mpf : - 4377448802065121 439
; mpfd: - 4377448802065121 439 (-2.79945e+132) class: Neg. norm. non-zero
; hwf : - 4377448802065121 439 (-2.79945e+132) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10110110110 #b1111100011010100010000111000110111101001101011100001)))
(assert (= r (fp #b1 #b10110110110 #b1111100011010100010000111000110111101001101011100001)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
