(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.692845158338034394773785606957972049713134765625p-426 {- 3120297196916624 -426 (-9.76875e-129)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = -1.565256168707966910602635834948159754276275634765625p978 {- 2545687470762074 978 (-3.99872e+294)}
; -1.692845158338034394773785606957972049713134765625p-426 x -oo -1.565256168707966910602635834948159754276275634765625p978 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001010101 #b1011000101011110010011001110000001000000111110010000)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b1 #b11111010001 #b1001000010110100101000001101011001110110100001011010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
