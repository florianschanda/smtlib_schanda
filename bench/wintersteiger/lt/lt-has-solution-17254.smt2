(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6066715910777384923591171173029579222202301025390625p261 {- 2732205951513969 261 (-5.95328e+078)}
; Y = 1.8881048073487882721366304394905455410480499267578125p-602 {+ 3999668479441949 -602 (1.13755e-181)}
; -1.6066715910777384923591171173029579222202301025390625p261 < 1.8881048073487882721366304394905455410480499267578125p-602 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000100 #b1001101101001110110101000101001100010111010101110001)))
(assert (= y (fp #b0 #b00110100101 #b1110001101011010110101100010111011111011110000011101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
