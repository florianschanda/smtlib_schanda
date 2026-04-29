(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4477326091481301784114066322217695415019989013671875p858 {- 2016408411721139 858 (-2.78243e+258)}
; -1.4477326091481301784114066322217695415019989013671875p858 | == 1.4477326091481301784114066322217695415019989013671875p858
; [HW: 1.4477326091481301784114066322217695415019989013671875p858] 

; mpf : + 2016408411721139 858
; mpfd: + 2016408411721139 858 (2.78243e+258) class: Pos. norm. non-zero
; hwf : + 2016408411721139 858 (2.78243e+258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011001 #b0111001010011110100110101011000110100100110110110011)))
(assert (= r (fp #b0 #b11101011001 #b0111001010011110100110101011000110100100110110110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
