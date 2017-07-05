(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6032305482338322644153549845214001834392547607421875 778 {- 2716708872244387 778 (-2.54878e+234)}
; -1.6032305482338322644153549845214001834392547607421875 778 I == -1.6032305482338322644153549845214001834392547607421875 778
; [HW: -1.6032305482338322644153549845214001834392547607421875 778] 

; mpf : - 2716708872244387 778
; mpfd: - 2716708872244387 778 (-2.54878e+234) class: Neg. norm. non-zero
; hwf : - 2716708872244387 778 (-2.54878e+234) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001001 #b1001101001101101010100010011010010011100110010100011)))
(assert (= r (fp #b1 #b11100001001 #b1001101001101101010100010011010010011100110010100011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
