(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.51329630538208181889103798312135040760040283203125p-604 {+ 2311681049649396 -604 (2.27933e-182)}
; Y = 1.912196116945747093041063635610044002532958984375p-141 {+ 4108166092365680 -141 (6.85967e-043)}
; 1.51329630538208181889103798312135040760040283203125p-604 > 1.912196116945747093041063635610044002532958984375p-141 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100011 #b1000001101100111011000101111110011000110000011110100)))
(assert (= y (fp #b0 #b01101110010 #b1110100110000101101011110100100111010001111101110000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
