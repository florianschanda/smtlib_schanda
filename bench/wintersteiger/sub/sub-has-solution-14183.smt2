(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.25256111443469553279328465578146278858184814453125p-220 {- 1137434140856372 -220 (-7.43361e-067)}
; -zero - -1.25256111443469553279328465578146278858184814453125p-220 == 1.25256111443469553279328465578146278858184814453125p-220
; [HW: 1.25256111443469553279328465578146278858184814453125p-220] 

; mpf : + 1137434140856372 -220
; mpfd: + 1137434140856372 -220 (7.43361e-067) class: Pos. norm. non-zero
; hwf : + 1137434140856372 -220 (7.43361e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01100100011 #b0100000010100111110110000101111010111101000000110100)))
(assert (= r (fp #b0 #b01100100011 #b0100000010100111110110000101111010111101000000110100)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
