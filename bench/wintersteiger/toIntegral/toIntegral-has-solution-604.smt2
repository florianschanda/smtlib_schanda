(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.16760167152816141111770775751210749149322509765625 283 {+ 754810825440900 283 (1.81461e+085)}
; 1.16760167152816141111770775751210749149322509765625 283 I == 1.16760167152816141111770775751210749149322509765625 283
; [HW: 1.16760167152816141111770775751210749149322509765625 283] 

; mpf : + 754810825440900 283
; mpfd: + 754810825440900 283 (1.81461e+085) class: Pos. norm. non-zero
; hwf : + 754810825440900 283 (1.81461e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011010 #b0010101011100111111100010111000111110111111010000100)))
(assert (= r (fp #b0 #b10100011010 #b0010101011100111111100010111000111110111111010000100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
