(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1744543265274722809721197336330078542232513427734375p-743 {+ 785672439942295 -743 (2.53834e-224)}
; Y = -1.88693517293500523379634614684619009494781494140625p989 {- 3994400914331876 989 (-9.8724e+297)}
; 1.1744543265274722809721197336330078542232513427734375p-743 / -1.88693517293500523379634614684619009494781494140625p989 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011000 #b0010110010101001000010011110101100010100110010010111)))
(assert (= y (fp #b1 #b11111011100 #b1110001100001110001011101111100101101101100011100100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
