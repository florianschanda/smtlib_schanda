(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8415492952360714706827593545312993228435516357421875p323 {+ 3790001092439075 323 (3.14682e+097)}
; Y = 1.1052262270848089986685636176844127476215362548828125p21 {+ 473896797088749 21 (2.31783e+006)}
; 1.8415492952360714706827593545312993228435516357421875p323 m 1.1052262270848089986685636176844127476215362548828125p21 == 1.1052262270848089986685636176844127476215362548828125p21
; [HW: 1.1052262270848089986685636176844127476215362548828125p21] 

; mpf : + 473896797088749 21
; mpfd: + 473896797088749 21 (2.31783e+006) class: Pos. norm. non-zero
; hwf : + 473896797088749 21 (2.31783e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000010 #b1101011101101111110001100100110100000010110000100011)))
(assert (= y (fp #b0 #b10000010100 #b0001101011110000000110110010010000000010101111101101)))
(assert (= r (fp #b0 #b10000010100 #b0001101011110000000110110010010000000010101111101101)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
