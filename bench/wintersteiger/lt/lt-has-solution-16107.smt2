(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.297391137347175149585609688074328005313873291015625p721 {- 1339330615340026 721 (-1.43119e+217)}
; Y = -1.4689144973990335696356623884639702737331390380859375p-166 {- 2111803155754911 -166 (-1.57043e-050)}
; -1.297391137347175149585609688074328005313873291015625p721 < -1.4689144973990335696356623884639702737331390380859375p-166 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010000 #b0100110000100001110100110101100100000110101111111010)))
(assert (= y (fp #b1 #b01101011001 #b0111100000001010110001111100111011110010111110011111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
