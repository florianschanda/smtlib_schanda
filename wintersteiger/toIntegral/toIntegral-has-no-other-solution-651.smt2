(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0604972667039020972623575289617292582988739013671875 -451 {+ 272455467784627 -451 (1.82382e-136)}
; 1.0604972667039020972623575289617292582988739013671875 -451 I == 1.0 0
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
(assert (= x (fp #b0 #b01000111100 #b0000111101111100101111111011010111111101100110110011)))
(assert (= r (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
