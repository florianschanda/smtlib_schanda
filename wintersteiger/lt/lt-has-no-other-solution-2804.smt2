(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.48767891897954829261152553954161703586578369140625p-898 {- 2196310597792740 -898 (-7.04001e-271)}
; Y = 1.1704879397981660105187984299845993518829345703125p-1021 {+ 767809422146184 -1021 (5.20884e-308)}
; -1.48767891897954829261152553954161703586578369140625p-898 < 1.1704879397981660105187984299845993518829345703125p-1021 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111101 #b0111110011011000100001101000111111110111001111100100)))
(assert (= y (fp #b0 #b00000000010 #b0010101110100101000110001111110111001011101010001000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
