(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.397717139670346941926482031703926622867584228515625p476 {- 1791158762018234 476 (-2.72708e+143)}
; Y = 1.212426419740253447088207394699566066265106201171875p-760 {+ 956683544785854 -760 (1.99921e-229)}
; -1.397717139670346941926482031703926622867584228515625p476 > 1.212426419740253447088207394699566066265106201171875p-760 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011011 #b0110010111010000110010100101101111110001010110111010)))
(assert (= y (fp #b0 #b00100000111 #b0011011001100001100100111110110110010111001110111110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
