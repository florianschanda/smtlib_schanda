(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.26710009485012786711877197376452386379241943359375p410 {+ 1202911887637660 410 (3.3505e+123)}
; 1.26710009485012786711877197376452386379241943359375p410 | == 1.26710009485012786711877197376452386379241943359375p410
; [HW: 1.26710009485012786711877197376452386379241943359375p410] 

; mpf : + 1202911887637660 410
; mpfd: + 1202911887637660 410 (3.3505e+123) class: Pos. norm. non-zero
; hwf : + 1202911887637660 410 (3.3505e+123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011001 #b0100010001100000101010111111110000100011110010011100)))
(assert (= r (fp #b0 #b10110011001 #b0100010001100000101010111111110000100011110010011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
