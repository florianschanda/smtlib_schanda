(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.78688375575488489488407140015624463558197021484375p313 {- 3543809389201596 313 (-2.98184e+094)}
; Y = 1.867299134779810909634534255019389092922210693359375p969 {+ 3905968060213110 969 (9.31708e+291)}
; -1.78688375575488489488407140015624463558197021484375p313 > 1.867299134779810909634534255019389092922210693359375p969 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111000 #b1100100101110001001101101011110010111000100010111100)))
(assert (= y (fp #b0 #b11111001000 #b1101111000000111010100001110101110111010011101110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
