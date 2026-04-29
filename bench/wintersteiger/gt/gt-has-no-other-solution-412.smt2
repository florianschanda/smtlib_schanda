(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9630334535582940613807068075402639806270599365234375p185 {+ 4337117102590455 185 (9.62669e+055)}
; Y = 1.20354752048485380555575829930603504180908203125p842 {+ 916696537407776 842 (3.52955e+253)}
; 1.9630334535582940613807068075402639806270599365234375p185 > 1.20354752048485380555575829930603504180908203125p842 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111000 #b1111011010001001010111000100001111111100100111110111)))
(assert (= y (fp #b0 #b11101001001 #b0011010000011011101100001011011110101010000100100000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
