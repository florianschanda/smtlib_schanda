(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.8575159567339778465822064390522427856922149658203125p152 {+ 3861908543211397 152 (1.06045e+046)}
; +zero + 1.8575159567339778465822064390522427856922149658203125p152 == 1.8575159567339778465822064390522427856922149658203125p152
; [HW: 1.8575159567339778465822064390522427856922149658203125p152] 

; mpf : + 3861908543211397 152
; mpfd: + 3861908543211397 152 (1.06045e+046) class: Pos. norm. non-zero
; hwf : + 3861908543211397 152 (1.06045e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10010010111 #b1101101110000110001010100110110111111000011110000101)))
(assert (= r (fp #b0 #b10010010111 #b1101101110000110001010100110110111111000011110000101)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
