(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.91370682825068616494945672457106411457061767578125p-321 {+ 4114969731235668 -321 (4.47968e-097)}
; Y = -1.928397537654976900967085384763777256011962890625p380 {- 4181130804634640 380 (-4.74892e+114)}
; 1.91370682825068616494945672457106411457061767578125p-321 % -1.928397537654976900967085384763777256011962890625p380 == 1.91370682825068616494945672457106411457061767578125p-321
; [HW: 1.91370682825068616494945672457106411457061767578125p-321] 

; mpf : + 4114969731235668 -321
; mpfd: + 4114969731235668 -321 (4.47968e-097) class: Pos. norm. non-zero
; hwf : + 4114969731235668 -321 (4.47968e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111110 #b1110100111101000101100001101000101110111111101010100)))
(assert (= y (fp #b1 #b10101111011 #b1110110110101011011101100000010111101010010000010000)))
(assert (= r (fp #b0 #b01010111110 #xe9e8b0d177f54)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
