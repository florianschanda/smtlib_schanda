(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2976982961218379575285553073626942932605743408203125p721 {- 1340713935483141 721 (-1.43153e+217)}
; Y = -1.781218764556269373855457160971127450466156005859375p495 {- 3518296536950454 495 (-1.82207e+149)}
; Z = -1.7288253610601194143470138442353345453739166259765625p-527 {- 3282337624488521 -527 (-3.93499e-159)}
; -1.2976982961218379575285553073626942932605743408203125p721 x -1.781218764556269373855457160971127450466156005859375p495 -1.7288253610601194143470138442353345453739166259765625p-527 == +oo
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
(assert (= x (fp #b1 #b11011010000 #b0100110000110101111101001001110111101011000100000101)))
(assert (= y (fp #b1 #b10111101110 #b1100011111111101111100111111010011001010011010110110)))
(assert (= z (fp #b1 #b00111110000 #b1011101010010100010011001000001000111111101001001001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
