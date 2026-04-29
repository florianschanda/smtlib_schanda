(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1356781474240837948030957704759202897548675537109375 541 {- 611040054181423 541 (-8.17491e+162)}
; -1.1356781474240837948030957704759202897548675537109375 541 I == -1.1356781474240837948030957704759202897548675537109375 541
; [HW: -1.1356781474240837948030957704759202897548675537109375 541] 

; mpf : - 611040054181423 541
; mpfd: - 611040054181423 541 (-8.17491e+162) class: Neg. norm. non-zero
; hwf : - 611040054181423 541 (-8.17491e+162) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011100 #b0010001010111011110011011001010111110111111000101111)))
(assert (= r (fp #b1 #b11000011100 #b0010001010111011110011011001010111110111111000101111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
