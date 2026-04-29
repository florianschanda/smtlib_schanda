(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6028066283597741659150415216572582721710205078125p780 {+ 2714799706857544 780 (1.01924e+235)}
; Y = 1.6037784938076831142694800291792489588260650634765625p-863 {+ 2719176599726601 -863 (2.6077e-260)}
; 1.6028066283597741659150415216572582721710205078125p780 > 1.6037784938076831142694800291792489588260650634765625p-863 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001011 #b1001101001010001100010010000001010011110000001001000)))
(assert (= y (fp #b0 #b00010100000 #b1001101010010001001110100011010011101110101000001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
