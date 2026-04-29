(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4518320609225747741533041335060261189937591552734375p-9 {- 2034870701204951 -9 (-0.00283561)}
; -1.4518320609225747741533041335060261189937591552734375p-9 | == 1.4518320609225747741533041335060261189937591552734375p-9
; [HW: 1.4518320609225747741533041335060261189937591552734375p-9] 

; mpf : + 2034870701204951 -9
; mpfd: + 2034870701204951 -9 (0.00283561) class: Pos. norm. non-zero
; hwf : + 2034870701204951 -9 (0.00283561) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111110110 #b0111001110101011010001000001010011110010010111010111)))
(assert (= r (fp #b0 #b01111110110 #b0111001110101011010001000001010011110010010111010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
