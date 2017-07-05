(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.06776082989956844215839737444184720516204833984375p382 {- 305167648286012 382 (-1.0518e+115)}
; Y = 1.7632238121719316925606335644260980188846588134765625p552 {+ 3437254476097801 552 (2.59935e+166)}
; -1.06776082989956844215839737444184720516204833984375p382 < 1.7632238121719316925606335644260980188846588134765625p552 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111101 #b0001000101011000110001100001010001011110010100111100)))
(assert (= y (fp #b0 #b11000100111 #b1100001101100010101000101100000011001110100100001001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
