(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0107701678962393021521393166040070354938507080078125p-896 {+ 48504524124221 -896 (1.91327e-270)}
; Y = 1.98763880133740666877883995766751468181610107421875p24 {+ 4447929737679788 24 (3.3347e+007)}
; 1.0107701678962393021521393166040070354938507080078125p-896 = 1.98763880133740666877883995766751468181610107421875p24 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111111 #b0000001011000001110101010110111011100011000000111101)))
(assert (= y (fp #b0 #b10000010111 #b1111110011010101111001011000000000000001001110101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
