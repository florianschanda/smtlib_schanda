(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1448855930777757095029301126487553119659423828125p641 {+ 652506702996424 641 (1.04469e+193)}
; Y = -1.625828162487077843678662247839383780956268310546875p806 {- 2818479479374766 806 (-6.93827e+242)}
; 1.1448855930777757095029301126487553119659423828125p641 < -1.625828162487077843678662247839383780956268310546875p806 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000000 #b0010010100010111001110001110001111101110001111001000)))
(assert (= y (fp #b1 #b11100100101 #b1010000000110110010001100100001011001100001110101110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
