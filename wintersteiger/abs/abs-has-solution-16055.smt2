(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.943554965525089439637440591468475759029388427734375p-947 {- 4249393791142374 -947 (-1.63377e-285)}
; -1.943554965525089439637440591468475759029388427734375p-947 | == 1.943554965525089439637440591468475759029388427734375p-947
; [HW: 1.943554965525089439637440591468475759029388427734375p-947] 

; mpf : + 4249393791142374 -947
; mpfd: + 4249393791142374 -947 (1.63377e-285) class: Pos. norm. non-zero
; hwf : + 4249393791142374 -947 (1.63377e-285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001100 #b1111000110001100110100010111011011101000100111100110)))
(assert (= r (fp #b0 #b00001001100 #b1111000110001100110100010111011011101000100111100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
