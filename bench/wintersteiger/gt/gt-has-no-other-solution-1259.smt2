(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.293289836022307515150941981119103729724884033203125p624 {+ 1320859996221618 624 (9.00354e+187)}
; Y = 1.46634699944306845509345293976366519927978515625p260 {+ 2100240172917152 260 (2.71666e+078)}
; 1.293289836022307515150941981119103729724884033203125p624 > 1.46634699944306845509345293976366519927978515625p260 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101111 #b0100101100010101000010101110110111110111000010110010)))
(assert (= y (fp #b0 #b10100000011 #b0111011101100010100001000101011100110010000110100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
