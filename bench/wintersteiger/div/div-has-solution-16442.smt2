(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5294946129445674554148126844665966928005218505859375p1004 {+ 2384631741551839 1004 (2.62219e+302)}
; Y = 1.889785609170961944158761980361305177211761474609375p-449 {+ 4007238137901974 -449 (1.3e-135)}
; 1.5294946129445674554148126844665966928005218505859375p1004 / 1.889785609170961944158761980361305177211761474609375p-449 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101011 #b1000011110001100111101010111111000000001010011011111)))
(assert (= y (fp #b0 #b01000111110 #b1110001111001000111111010101101111010111001110010110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
