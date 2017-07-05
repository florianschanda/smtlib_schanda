(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1490603682955653486175151556381024420261383056640625p1008 {+ 671308219111617 1008 (3.15194e+303)}
; Y = -1.4780932928715364571559121031896211206912994384765625p255 {- 2153140775624585 255 (-8.55758e+076)}
; 1.1490603682955653486175151556381024420261383056640625p1008 > -1.4780932928715364571559121031896211206912994384765625p255 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101111 #b0010011000101000110100011111111011110101100011000001)))
(assert (= y (fp #b1 #b10011111110 #b0111101001100100010100100111000101010001111110001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
