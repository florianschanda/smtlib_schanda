(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7682238744143530251307083744904957711696624755859375p-472 {- 3459772754549599 -472 (-1.45004e-142)}
; Y = 1.8712326810176913571837076233350671827793121337890625p-841 {+ 3923683177584273 -841 (1.27615e-253)}
; -1.7682238744143530251307083744904957711696624755859375p-472 * 1.8712326810176913571837076233350671827793121337890625p-841 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000100111 #b1100010010101010010100011110000010011101101101011111)))
(assert (= y (fp #b0 #b00010110110 #b1101111100001001000110101110000000101101011010010001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
