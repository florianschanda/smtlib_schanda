(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7351985831434142415474752851878292858600616455078125 -805 {+ 3311040065087997 -805 (8.1321e-243)}
; 1.7351985831434142415474752851878292858600616455078125 -805 I == 1.0 0
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
(assert (= x (fp #b0 #b00011011010 #b1011110000110101111110010110111010101010100111111101)))
(assert (= r (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
