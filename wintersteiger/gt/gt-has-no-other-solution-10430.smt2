(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9392464733371921337123922057799063622951507568359375p-661 {+ 4229990067330431 -661 (2.02678e-199)}
; Y = 1.4240121057289021333502887500799261033535003662109375p41 {+ 1909580761361263 41 (3.13144e+012)}
; 1.9392464733371921337123922057799063622951507568359375p-661 > 1.4240121057289021333502887500799261033535003662109375p41 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101010 #b1111000001110010011101001111010111011101110101111111)))
(assert (= y (fp #b0 #b10000101000 #b0110110010001100000011101010111100110110101101101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
