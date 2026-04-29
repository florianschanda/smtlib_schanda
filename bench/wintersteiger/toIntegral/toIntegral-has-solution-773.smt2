(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0260087908726476246812353565474040806293487548828125 578 {+ 117133180882413 578 (1.01505e+174)}
; 1.0260087908726476246812353565474040806293487548828125 578 I == 1.0260087908726476246812353565474040806293487548828125 578
; [HW: 1.0260087908726476246812353565474040806293487548828125 578] 

; mpf : + 117133180882413 578
; mpfd: + 117133180882413 578 (1.01505e+174) class: Pos. norm. non-zero
; hwf : + 117133180882413 578 (1.01505e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000001 #b0000011010101000100000110001101000110100110111101101)))
(assert (= r (fp #b0 #b11001000001 #b0000011010101000100000110001101000110100110111101101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
