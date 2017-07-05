(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2001657609186029418424368486739695072174072265625p-905 {+ 901466446285352 -905 (4.43706e-273)}
; Y = -1.0330490298989081221492369877523742616176605224609375p-300 {- 148839598737679 -300 (-5.07133e-091)}
; 1.2001657609186029418424368486739695072174072265625p-905 < -1.0330490298989081221492369877523742616176605224609375p-300 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110110 #b0011001100111110000100000011010011101100101000101000)))
(assert (= y (fp #b1 #b01011010011 #b0000100001110101111001101011011010010100100100001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
