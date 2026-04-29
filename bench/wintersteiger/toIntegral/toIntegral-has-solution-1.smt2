(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0240795307814918313482621670118533074855804443359375 675 {+ 108444565854783 675 (1.60539e+203)}
; 1.0240795307814918313482621670118533074855804443359375 675 I == 1.0240795307814918313482621670118533074855804443359375 675
; [HW: 1.0240795307814918313482621670118533074855804443359375 675] 

; mpf : + 108444565854783 675
; mpfd: + 108444565854783 675 (1.60539e+203) class: Pos. norm. non-zero
; hwf : + 108444565854783 675 (1.60539e+203) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100010 #b0000011000101010000100110111110100110101101000111111)))
(assert (= r (fp #b0 #b11010100010 #b0000011000101010000100110111110100110101101000111111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
