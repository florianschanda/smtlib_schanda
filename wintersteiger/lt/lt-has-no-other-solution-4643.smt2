(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9291558006218048060276260002865456044673919677734375p-200 {- 4184545717449495 -200 (-1.20052e-060)}
; Y = 1.92367666459560471281520221964456140995025634765625p-195 {+ 4159869882483588 -195 (3.83074e-059)}
; -1.9291558006218048060276260002865456044673919677734375p-200 < 1.92367666459560471281520221964456140995025634765625p-195 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110111 #b1110110111011101001001111001000010001111001100010111)))
(assert (= y (fp #b0 #b01100111100 #b1110110001110110000100101110101010000100001110000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
