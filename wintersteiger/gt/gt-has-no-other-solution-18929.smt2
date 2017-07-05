(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6150220151687417757813136631739325821399688720703125p-688 {+ 2769812918338597 -688 (1.2576e-207)}
; Y = -1.8537655324904120934803586351335979998111724853515625p993 {- 3845018133985593 993 (-1.55182e+299)}
; 1.6150220151687417757813136631739325821399688720703125p-688 > -1.8537655324904120934803586351335979998111724853515625p993 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101001111 #b1001110101110010000101010011000101111000010000100101)))
(assert (= y (fp #b1 #b11111100000 #b1101101010010000011000001100000001111111100100111001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
