(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.119253037062019284775260530295781791210174560546875p491 {+ 537067933275310 491 (7.15577e+147)}
; Y = 1.8955094260506843983904445849475450813770294189453125p-156 {+ 4033015917468629 -156 (2.07514e-047)}
; 1.119253037062019284775260530295781791210174560546875p491 = 1.8955094260506843983904445849475450813770294189453125p-156 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101010 #b0001111010000111010111011111011000100001010010101110)))
(assert (= y (fp #b0 #b01101100011 #b1110010101000000000110110001001000100101101111010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
