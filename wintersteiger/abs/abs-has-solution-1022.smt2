(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4759506712786045756757857816410250961780548095703125p154 {- 2143491265817061 154 (-3.37048e+046)}
; -1.4759506712786045756757857816410250961780548095703125p154 | == 1.4759506712786045756757857816410250961780548095703125p154
; [HW: 1.4759506712786045756757857816410250961780548095703125p154] 

; mpf : + 2143491265817061 154
; mpfd: + 2143491265817061 154 (3.37048e+046) class: Pos. norm. non-zero
; hwf : + 2143491265817061 154 (3.37048e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011001 #b0111100111010111111001110011011110100110100111100101)))
(assert (= r (fp #b0 #b10010011001 #b0111100111010111111001110011011110100110100111100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
