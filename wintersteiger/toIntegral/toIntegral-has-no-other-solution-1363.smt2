(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3291215001810805507176382889156229794025421142578125 499 {+ 1482231465575133 499 (2.17537e+150)}
; 1.3291215001810805507176382889156229794025421142578125 499 I == 1.3291215001810805507176382889156229794025421142578125 499
; [HW: 1.3291215001810805507176382889156229794025421142578125 499] 

; mpf : + 1482231465575133 499
; mpfd: + 1482231465575133 499 (2.17537e+150) class: Pos. norm. non-zero
; hwf : + 1482231465575133 499 (2.17537e+150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110010 #b0101010001000001010011100111111110110000001011011101)))
(assert (= r (fp #b0 #b10111110010 #b0101010001000001010011100111111110110000001011011101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
