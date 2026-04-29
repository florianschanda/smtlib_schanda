(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6349705827190856854969069900107569992542266845703125p89 {- 2859653279724901 89 (-1.012e+027)}
; Y = 1.4111822964844871197698239484452642500400543212890625p-924 {+ 1851800437228881 -924 (9.95101e-279)}
; -1.6349705827190856854969069900107569992542266845703125p89 < 1.4111822964844871197698239484452642500400543212890625p-924 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011000 #b1010001010001101011011101001111010110011010101100101)))
(assert (= y (fp #b0 #b00001100011 #b0110100101000011001111100011010000011000010101010001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
