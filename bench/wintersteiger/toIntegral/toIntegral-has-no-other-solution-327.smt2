(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0533163398126614840322190502774901688098907470703125 168 {+ 240115448113061 168 (3.94092e+050)}
; 1.0533163398126614840322190502774901688098907470703125 168 I == 1.0533163398126614840322190502774901688098907470703125 168
; [HW: 1.0533163398126614840322190502774901688098907470703125 168] 

; mpf : + 240115448113061 168
; mpfd: + 240115448113061 168 (3.94092e+050) class: Pos. norm. non-zero
; hwf : + 240115448113061 168 (3.94092e+050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100111 #b0000110110100110001000111011111111010110011110100101)))
(assert (= r (fp #b0 #b10010100111 #b0000110110100110001000111011111111010110011110100101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
