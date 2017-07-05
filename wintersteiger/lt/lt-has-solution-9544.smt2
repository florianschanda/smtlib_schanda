(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4176953361031561229310682392679154872894287109375p559 {+ 1881132560028568 559 (2.67516e+168)}
; Y = 1.704027497426094495125425964943133294582366943359375p-376 {+ 3170657975066742 -376 (1.10713e-113)}
; 1.4176953361031561229310682392679154872894287109375p559 < 1.704027497426094495125425964943133294582366943359375p-376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101110 #b0110101011101110000101001110000001000001001110011000)))
(assert (= y (fp #b0 #b01010000111 #b1011010000111011001001010110010011101110000001110110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
