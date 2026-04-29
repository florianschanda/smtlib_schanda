(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4017365634782610328556984313763678073883056640625p974 {+ 1809260637581800 974 (2.23811e+293)}
; Y = -1.9606090258835557893490886272047646343708038330078125p-155 {- 4326198451017917 -155 (-4.29281e-047)}
; 1.4017365634782610328556984313763678073883056640625p974 > -1.9606090258835557893490886272047646343708038330078125p-155 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111001101 #b0110011011011000001101010001100110111111000111101000)))
(assert (= y (fp #b1 #b01101100100 #b1111010111101010011110010001111001101001100010111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
