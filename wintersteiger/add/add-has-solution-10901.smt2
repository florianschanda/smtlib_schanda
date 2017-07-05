(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.85180501837492439420884693390689790248870849609375p-538 {+ 3836188763345628 -538 (2.05806e-162)}
; Y = 1.983880900533441238309251275495626032352447509765625p-290 {+ 4431005657019354 -290 (9.97279e-088)}
; 1.85180501837492439420884693390689790248870849609375p-538 + 1.983880900533441238309251275495626032352447509765625p-290 == 1.983880900533441238309251275495626032352447509765625p-290
; [HW: 1.983880900533441238309251275495626032352447509765625p-290] 

; mpf : + 4431005657019354 -290
; mpfd: + 4431005657019354 -290 (9.97279e-088) class: Pos. norm. non-zero
; hwf : + 4431005657019354 -290 (9.97279e-088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100101 #b1101101000001111111001001100100001111101001011011100)))
(assert (= y (fp #b0 #b01011011101 #b1111101111011111100111100110001011110011001111011010)))
(assert (= r (fp #b0 #b01011011101 #b1111101111011111100111100110001011110011001111011010)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
