(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6518740804469729255288257263600826263427734375 726 {- 2935779865793472 726 (-5.83114e+218)}
; -1.6518740804469729255288257263600826263427734375 726 I == -1.6518740804469729255288257263600826263427734375 726
; [HW: -1.6518740804469729255288257263600826263427734375 726] 

; mpf : - 2935779865793472 726
; mpfd: - 2935779865793472 726 (-5.83114e+218) class: Neg. norm. non-zero
; hwf : - 2935779865793472 726 (-5.83114e+218) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010101 #b1010011011100001001110000100000010100001001111000000)))
(assert (= r (fp #b1 #b11011010101 #b1010011011100001001110000100000010100001001111000000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
