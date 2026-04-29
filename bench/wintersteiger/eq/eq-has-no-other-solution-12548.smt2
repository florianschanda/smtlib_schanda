(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.723819521145261379757585018523968756198883056640625p-913 {- 3259793325713290 -913 (-2.48946e-275)}
; Y = 1.148023044751231847016015308327041566371917724609375p906 {+ 666636529183894 906 (6.2105e+272)}
; -1.723819521145261379757585018523968756198883056640625p-913 = 1.148023044751231847016015308327041566371917724609375p906 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101110 #b1011100101001100001111000111001110000110011110001010)))
(assert (= y (fp #b0 #b11110001001 #b0010010111100100110101101001100001000010110010010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
