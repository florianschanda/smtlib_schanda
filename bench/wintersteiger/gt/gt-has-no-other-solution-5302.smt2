(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.143207477667939286902765161357820034027099609375p497 {- 644949143062000 497 (-4.67771e+149)}
; Y = 1.42435235481095379128646527533419430255889892578125p536 {+ 1911113107000404 536 (3.20402e+161)}
; -1.143207477667939286902765161357820034027099609375p497 > 1.42435235481095379128646527533419430255889892578125p536 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110000 #b0010010010101001001111101100100100100000010111110000)))
(assert (= y (fp #b0 #b11000010111 #b0110110010100010010110110001110111100100110001010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
