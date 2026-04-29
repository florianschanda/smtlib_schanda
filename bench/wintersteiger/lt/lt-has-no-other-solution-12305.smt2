(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0569340356099505839893026859499514102935791015625p907 {+ 256408101557672 907 (1.14355e+273)}
; Y = 1.1956797419406830496058091739541850984096527099609375p-579 {+ 881263212888015 -579 (6.04293e-175)}
; 1.0569340356099505839893026859499514102935791015625p907 < 1.1956797419406830496058091739541850984096527099609375p-579 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001010 #b0000111010010011001110101001110011111001010110101000)))
(assert (= y (fp #b0 #b00110111100 #b0011001000011000000100010100110000011111111111001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
