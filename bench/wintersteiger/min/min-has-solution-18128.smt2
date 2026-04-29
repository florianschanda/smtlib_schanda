(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.881237689460237394456498805084265768527984619140625p-638 {+ 3968741729877962 -638 (1.64933e-192)}
; +oo m 1.881237689460237394456498805084265768527984619140625p-638 == 1.881237689460237394456498805084265768527984619140625p-638
; [HW: 1.881237689460237394456498805084265768527984619140625p-638] 

; mpf : + 3968741729877962 -638
; mpfd: + 3968741729877962 -638 (1.64933e-192) class: Pos. norm. non-zero
; hwf : + 3968741729877962 -638 (1.64933e-192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00110000001 #b1110000110011000110010110001000000111011111111001010)))
(assert (= r (fp #b0 #b00110000001 #b1110000110011000110010110001000000111011111111001010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
