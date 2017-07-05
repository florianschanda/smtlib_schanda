(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2390120226005858494744416020694188773632049560546875p-670 {+ 1076414455921067 -670 (2.52917e-202)}
; Y = -1.1899444187277603557362226638360880315303802490234375p-887 {- 855433613403447 -887 (-1.15324e-267)}
; 1.2390120226005858494744416020694188773632049560546875p-670 = -1.1899444187277603557362226638360880315303802490234375p-887 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100001 #b0011110100101111111001000101010001101011100110101011)))
(assert (= y (fp #b1 #b00010001000 #b0011000010100000001100101000101001111110010100110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
