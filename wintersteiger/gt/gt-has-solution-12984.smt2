(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.142116017348595580216397138428874313831329345703125p-549 {- 640033642774514 -549 (-6.19787e-166)}
; Y = 1.2896169627624549658406749585992656648159027099609375p-135 {+ 1304318845577167 -135 (2.96082e-041)}
; -1.142116017348595580216397138428874313831329345703125p-549 > 1.2896169627624549658406749585992656648159027099609375p-135 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011010 #b0010010001100001101101110001111010111111111111110010)))
(assert (= y (fp #b0 #b01101111000 #b0100101000100100010101100101011101101110011111001111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
