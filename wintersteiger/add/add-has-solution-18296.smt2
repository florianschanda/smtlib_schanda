(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.25875849170685416567039283108897507190704345703125p-247 {+ 1165344646829940 -247 (5.56588e-075)}
; Y = 1.222672921405821622187204411602579057216644287109375p408 {+ 1002829685868758 408 (8.08255e+122)}
; 1.25875849170685416567039283108897507190704345703125p-247 + 1.222672921405821622187204411602579057216644287109375p408 == 1.222672921405821622187204411602579057216644287109375p408
; [HW: 1.222672921405821622187204411602579057216644287109375p408] 

; mpf : + 1002829685868758 408
; mpfd: + 1002829685868758 408 (8.08255e+122) class: Pos. norm. non-zero
; hwf : + 1002829685868758 408 (8.08255e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001000 #b0100001000111101111111110001101101110001011101110100)))
(assert (= y (fp #b0 #b10110010111 #b0011100100000001000101111011001100100100100011010110)))
(assert (= r (fp #b0 #b10110010111 #b0011100100000001000101111011001100100100100011010110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
