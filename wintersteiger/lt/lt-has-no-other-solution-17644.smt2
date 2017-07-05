(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.075969009242061513731414379435591399669647216796875p-142 {+ 342134001714254 -142 (1.92992e-043)}
; Y = -1.1894863700323832222949249626253731548786163330078125p-968 {- 853370745469629 -968 (-4.76786e-292)}
; 1.075969009242061513731414379435591399669647216796875p-142 < -1.1894863700323832222949249626253731548786163330078125p-968 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101110001 #b0001001101110010101101000111101000110100010001001110)))
(assert (= y (fp #b1 #b00000110111 #b0011000010000010001011011100001001010011101010111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
