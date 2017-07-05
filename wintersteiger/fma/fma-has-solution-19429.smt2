(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8784188704870430353111032673041336238384246826171875p810 {+ 3956046897800659 810 (1.28259e+244)}
; Y = -1.7384783694545034027356678052456118166446685791015625p551 {- 3325810909496473 551 (-1.28144e+166)}
; Z = -oo {- 0 1024 (-1.#INF)}
; 1.8784188704870430353111032673041336238384246826171875p810 x -1.7384783694545034027356678052456118166446685791015625p551 -oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101001 #b1110000011100000000011110010000011101110010111010011)))
(assert (= y (fp #b1 #b11000100110 #b1011110100001100111010110001110110011100010010011001)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
