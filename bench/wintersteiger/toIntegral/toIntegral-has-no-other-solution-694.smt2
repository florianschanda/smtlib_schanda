(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.231028612300461677619978217990137636661529541015625 267 {- 1040460372268282 267 (-2.91929e+080)}
; -1.231028612300461677619978217990137636661529541015625 267 I == -1.231028612300461677619978217990137636661529541015625 267
; [HW: -1.231028612300461677619978217990137636661529541015625 267] 

; mpf : - 1040460372268282 267
; mpfd: - 1040460372268282 267 (-2.91929e+080) class: Neg. norm. non-zero
; hwf : - 1040460372268282 267 (-2.91929e+080) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001010 #b0011101100100100101100001110111001000101010011111010)))
(assert (= r (fp #b1 #b10100001010 #b0011101100100100101100001110111001000101010011111010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
