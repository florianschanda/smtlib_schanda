(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.59274400389278003586923659895546734333038330078125 -912 {+ 2669481675057620 -912 (4.60034e-275)}
; 1.59274400389278003586923659895546734333038330078125 -912 I == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101111 #b1001011110111110000100100010111110011110100111010100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
