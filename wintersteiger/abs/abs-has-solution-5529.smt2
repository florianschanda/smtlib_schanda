(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.046071271378099964977081981487572193145751953125p846 {- 207486560610896 846 (-4.90837e+254)}
; -1.046071271378099964977081981487572193145751953125p846 | == 1.046071271378099964977081981487572193145751953125p846
; [HW: 1.046071271378099964977081981487572193145751953125p846] 

; mpf : + 207486560610896 846
; mpfd: + 207486560610896 846 (4.90837e+254) class: Pos. norm. non-zero
; hwf : + 207486560610896 846 (4.90837e+254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001101 #b0000101111001011010100111010101111011010101001010000)))
(assert (= r (fp #b0 #b11101001101 #b0000101111001011010100111010101111011010101001010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
