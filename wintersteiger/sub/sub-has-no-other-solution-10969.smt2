(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.176483172721966230511725370888598263263702392578125p-624 {- 794809550907810 -624 (-1.68993e-188)}
; Y = -1.1139996448271027862375603945110924541950225830078125p-875 {- 513408757963709 -875 (-4.4222e-264)}
; -1.176483172721966230511725370888598263263702392578125p-624 - -1.1139996448271027862375603945110924541950225830078125p-875 == -1.1764831727219660084671204458572901785373687744140625p-624
; [HW: -1.1764831727219660084671204458572901785373687744140625p-624] 

; mpf : - 794809550907809 -624
; mpfd: - 794809550907809 -624 (-1.68993e-188) class: Neg. norm. non-zero
; hwf : - 794809550907809 -624 (-1.68993e-188) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001111 #b0010110100101110000000000100111100100010100110100010)))
(assert (= y (fp #b1 #b00010010100 #b0001110100101111000101001010101001001001101110111101)))
(assert (= r (fp #b1 #b00110001111 #b0010110100101110000000000100111100100010100110100001)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
