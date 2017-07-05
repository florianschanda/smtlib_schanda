(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.906275157009164278321122765191830694675445556640625p-270 {- 4081500459401610 -270 (-1.00482e-081)}
; Y = 1.774377148755372335386937265866436064243316650390625p669 {+ 3487484638578922 669 (4.34623e+201)}
; -1.906275157009164278321122765191830694675445556640625p-270 < 1.774377148755372335386937265866436064243316650390625p669 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011110001 #b1110100000000001101001100001000010001000000110001010)))
(assert (= y (fp #b0 #b11010011100 #b1100011000111101100101001011000010101100100011101010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
