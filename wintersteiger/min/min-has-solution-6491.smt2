(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.42960570856231772296496274066157639026641845703125p426 {- 1934772108997492 426 (-2.47739e+128)}
; Y = -1.9566853774616266292696309392340481281280517578125p-67 {- 4308527909446984 -67 (-1.3259e-020)}
; -1.42960570856231772296496274066157639026641845703125p426 m -1.9566853774616266292696309392340481281280517578125p-67 == -1.42960570856231772296496274066157639026641845703125p426
; [HW: -1.42960570856231772296496274066157639026641845703125p426] 

; mpf : - 1934772108997492 426
; mpfd: - 1934772108997492 426 (-2.47739e+128) class: Neg. norm. non-zero
; hwf : - 1934772108997492 426 (-2.47739e+128) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101001 #b0110110111111010101000111100010001110011001101110100)))
(assert (= y (fp #b1 #b01110111100 #b1111010011101001010101010011100011000010010101001000)))
(assert (= r (fp #b1 #b10110101001 #b0110110111111010101000111100010001110011001101110100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
