(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5440616326606739772131504651042632758617401123046875p-85 {+ 2450235766117195 -85 (3.99131e-026)}
; 1.5440616326606739772131504651042632758617401123046875p-85 | == 1.5440616326606739772131504651042632758617401123046875p-85
; [HW: 1.5440616326606739772131504651042632758617401123046875p-85] 

; mpf : + 2450235766117195 -85
; mpfd: + 2450235766117195 -85 (3.99131e-026) class: Pos. norm. non-zero
; hwf : + 2450235766117195 -85 (3.99131e-026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110101010 #b1000101101000111100111111000011101001001001101001011)))
(assert (= r (fp #b0 #b01110101010 #b1000101101000111100111111000011101001001001101001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
