(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.303067192131290408241284239920787513256072998046875p1012 {+ 1364893293550702 1012 (5.71903e+304)}
; Y = 1.4856011922184226836662901405361481010913848876953125p-561 {+ 2186953348325557 -561 (1.96822e-169)}
; 1.303067192131290408241284239920787513256072998046875p1012 < 1.4856011922184226836662901405361481010913848876953125p-561 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110011 #b0100110110010101110011111011111010110001110001101110)))
(assert (= y (fp #b0 #b00111001110 #b0111110001010000010111000001011101111010000010110101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
