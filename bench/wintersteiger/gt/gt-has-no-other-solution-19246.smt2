(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6326088011706165747938257482019253075122833251953125p-254 {+ 2849016761223285 -254 (5.63979e-077)}
; Y = -1.155640600647476201601193679380230605602264404296875p593 {- 700942951079694 593 (-3.74637e+178)}
; 1.6326088011706165747938257482019253075122833251953125p-254 > -1.155640600647476201601193679380230605602264404296875p593 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000001 #b1010000111110010101001101000000000110000100001110101)))
(assert (= y (fp #b1 #b11001010000 #b0010011111011000000011111111100110110101111100001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
