(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6324713250403262154719641330302692949771881103515625p-854 {+ 2848397623774137 -854 (1.35903e-257)}
; Y = 1.36527736091568119292105620843358337879180908203125p-628 {+ 1645062986506740 -628 (1.2257e-189)}
; 1.6324713250403262154719641330302692949771881103515625p-854 > 1.36527736091568119292105620843358337879180908203125p-628 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101001 #b1010000111101001101001000000100010110100101110111001)))
(assert (= y (fp #b0 #b00110001011 #b0101110110000010110100010010111100011010000111110100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
