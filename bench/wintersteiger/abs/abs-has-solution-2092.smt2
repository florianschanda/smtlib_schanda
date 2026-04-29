(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7465309018623298431549528686446137726306915283203125p71 {- 3362076291447749 71 (-4.12388e+021)}
; -1.7465309018623298431549528686446137726306915283203125p71 | == 1.7465309018623298431549528686446137726306915283203125p71
; [HW: 1.7465309018623298431549528686446137726306915283203125p71] 

; mpf : + 3362076291447749 71
; mpfd: + 3362076291447749 71 (4.12388e+021) class: Pos. norm. non-zero
; hwf : + 3362076291447749 71 (4.12388e+021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000110 #b1011111100011100101001100011000011110011101111000101)))
(assert (= r (fp #b0 #b10001000110 #b1011111100011100101001100011000011110011101111000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
