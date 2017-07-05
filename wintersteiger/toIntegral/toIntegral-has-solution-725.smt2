(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.644956476572095649402172057307325303554534912109375 405 {+ 2904625747560278 405 (1.35926e+122)}
; 1.644956476572095649402172057307325303554534912109375 405 I == 1.644956476572095649402172057307325303554534912109375 405
; [HW: 1.644956476572095649402172057307325303554534912109375 405] 

; mpf : + 2904625747560278 405
; mpfd: + 2904625747560278 405 (1.35926e+122) class: Pos. norm. non-zero
; hwf : + 2904625747560278 405 (1.35926e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010100 #b1010010100011011110111100001111000111000011101010110)))
(assert (= r (fp #b0 #b10110010100 #b1010010100011011110111100001111000111000011101010110)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
