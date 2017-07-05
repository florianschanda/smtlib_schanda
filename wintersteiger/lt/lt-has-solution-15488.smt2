(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.13201600963979043257268131128512322902679443359375p765 {- 594547251820700 765 (-2.19684e+230)}
; Y = 1.4092216410195572695585042310995049774646759033203125p930 {+ 1842970430007621 930 (1.27901e+280)}
; -1.13201600963979043257268131128512322902679443359375p765 < 1.4092216410195572695585042310995049774646759033203125p930 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011111100 #b0010000111001011110011010001101111110011100010011100)))
(assert (= y (fp #b0 #b11110100001 #b0110100011000010101111111101110011111110100101000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
