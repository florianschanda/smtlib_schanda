(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1097269088654473367938635419704951345920562744140625 -311 {+ 494166065878945 -311 (2.66004e-094)}
; 1.1097269088654473367938635419704951345920562744140625 -311 I == 1.0 0
; [HW: 1.0 0] 

; mpf : + 0 0
; mpfd: + 0 0 (1) class: Pos. norm. non-zero
; hwf : + 0 0 (1) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001000 #b0001110000010111000100000000110100010001011110100001)))
(assert (= r (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
