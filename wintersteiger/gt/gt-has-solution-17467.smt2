(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.331235633206349522339451141306199133396148681640625p984 {- 1491752674279946 984 (-2.17656e+296)}
; Y = -1.298479730529606523958818797837011516094207763671875p-479 {- 1344233203190782 -479 (-8.31893e-145)}
; -1.331235633206349522339451141306199133396148681640625p984 > -1.298479730529606523958818797837011516094207763671875p-479 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010111 #b0101010011001011110110111100001111100100001000001010)))
(assert (= y (fp #b1 #b01000100000 #b0100110001101001001010101110100100100100101111111110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
