(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.042343391075032155157487068208865821361541748046875p-916 {- 190697680267118 -916 (-1.88163e-276)}
; Y = -1.363834593244567461312044542864896357059478759765625p377 {- 1638565338560730 377 (-4.19827e+113)}
; -1.042343391075032155157487068208865821361541748046875p-916 / -1.363834593244567461312044542864896357059478759765625p377 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101011 #b0000101011010111000001000011011111011110011101101110)))
(assert (= y (fp #b1 #b10101111000 #b0101110100100100010000111000111100100011100011011010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
