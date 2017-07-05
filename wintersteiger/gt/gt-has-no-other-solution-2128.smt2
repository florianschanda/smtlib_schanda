(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.42769615048939879642375672119669616222381591796875p-852 {- 1926172223971852 -852 (-4.75422e-257)}
; Y = -1.305273809774181170695328546571545302867889404296875p421 {- 1374831015944974 421 (-7.06854e+126)}
; -1.42769615048939879642375672119669616222381591796875p-852 > -1.305273809774181170695328546571545302867889404296875p421 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101011 #b0110110101111101011111101011001011111010001000001100)))
(assert (= y (fp #b1 #b10110100100 #b0100111000100110011011001010010101001110001100001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
