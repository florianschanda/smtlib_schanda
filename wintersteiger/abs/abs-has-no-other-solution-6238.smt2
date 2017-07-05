(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.18958112512902136614911796641536056995391845703125p-433 {+ 853797484487540 -433 (5.36298e-131)}
; 1.18958112512902136614911796641536056995391845703125p-433 | == 1.18958112512902136614911796641536056995391845703125p-433
; [HW: 1.18958112512902136614911796641536056995391845703125p-433] 

; mpf : + 853797484487540 -433
; mpfd: + 853797484487540 -433 (5.36298e-131) class: Pos. norm. non-zero
; hwf : + 853797484487540 -433 (5.36298e-131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001110 #b0011000010001000011000110111110001011110001101110100)))
(assert (= r (fp #b0 #b01001001110 #b0011000010001000011000110111110001011110001101110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
