(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.948618653305874470760272743063978850841522216796875 877 {- 4272198613545038 877 (-1.96351e+264)}
; -1.948618653305874470760272743063978850841522216796875 877 I == -1.948618653305874470760272743063978850841522216796875 877
; [HW: -1.948618653305874470760272743063978850841522216796875 877] 

; mpf : - 4272198613545038 877
; mpfd: - 4272198613545038 877 (-1.96351e+264) class: Neg. norm. non-zero
; hwf : - 4272198613545038 877 (-1.96351e+264) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101100 #b1111001011011000101011000000110001010011000001001110)))
(assert (= r (fp #b1 #b11101101100 #b1111001011011000101011000000110001010011000001001110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
