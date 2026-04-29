(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1659781696668201078637139289639890193939208984375p644 {- 747499223063128 644 (-8.51153e+193)}
; Y = -1.951856201259916101520275333314202725887298583984375p420 {- 4286779233304454 420 (-5.28501e+126)}
; Z = 1.6749642653618248555602576743694953620433807373046875p470 {+ 3039768813971915 470 (5.10627e+141)}
; -1.1659781696668201078637139289639890193939208984375p644 x -1.951856201259916101520275333314202725887298583984375p420 1.6749642653618248555602576743694953620433807373046875p470 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010000011 #b0010101001111101100010111001101010010001101001011000)))
(assert (= y (fp #b1 #b10110100011 #b1111001110101100110110010001011011100111111110000110)))
(assert (= z (fp #b0 #b10111010101 #b1010110011001010011101010100010110110010100111001011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
