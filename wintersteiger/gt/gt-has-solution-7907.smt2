(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.552656578201815573692101679625920951366424560546875p911 {+ 2488943959653550 911 (2.68783e+274)}
; Y = 1.276666903239850103801700242911465466022491455078125p891 {+ 1245996962336738 891 (2.10768e+268)}
; 1.552656578201815573692101679625920951366424560546875p911 > 1.276666903239850103801700242911465466022491455078125p891 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001110 #b1000110101111010111001101100100101001011110010101110)))
(assert (= y (fp #b0 #b11101111010 #b0100011011010011101001000110010101001100111111100010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
