(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.02571212053289517740495284670032560825347900390625 363 {+ 115797096450852 363 (1.92714e+109)}
; 1.02571212053289517740495284670032560825347900390625 363 I == 1.02571212053289517740495284670032560825347900390625 363
; [HW: 1.02571212053289517740495284670032560825347900390625 363] 

; mpf : + 115797096450852 363
; mpfd: + 115797096450852 363 (1.92714e+109) class: Pos. norm. non-zero
; hwf : + 115797096450852 363 (1.92714e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101010 #b0000011010010101000100011100110011001100101100100100)))
(assert (= r (fp #b0 #b10101101010 #b0000011010010101000100011100110011001100101100100100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
