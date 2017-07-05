(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2369773609942438241660056519322097301483154296875p-139 {+ 1067251154668920 -139 (1.77498e-042)}
; Y = 1.0154956355044169047374680303619243204593658447265625p154 {+ 69786138283561 154 (2.31898e+046)}
; 1.2369773609942438241660056519322097301483154296875p-139 > 1.0154956355044169047374680303619243204593658447265625p154 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101110100 #b0011110010101010100011000101111101011100110101111000)))
(assert (= y (fp #b0 #b10010011001 #b0000001111110111100001011001111110111000111000101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
