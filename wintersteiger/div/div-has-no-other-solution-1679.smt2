(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6935376441555403115302169680944643914699554443359375p-554 {- 3123415875786303 -554 (-2.87195e-167)}
; Y = -1.2408595059973281937715228195884265005588531494140625p533 {- 1084734781458209 533 (-3.48907e+160)}
; -1.6935376441555403115302169680944643914699554443359375p-554 / -1.2408595059973281937715228195884265005588531494140625p533 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111010101 #b1011000110001011101011101101110000110001011000111111)))
(assert (= y (fp #b1 #b11000010100 #b0011110110101000111101111111010100110000011100100001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
