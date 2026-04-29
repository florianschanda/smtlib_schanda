(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6216468975402340557678826371557079255580902099609375p598 {- 2799648736118223 598 (-1.68226e+180)}
; Y = -1.827705256673798128730368262040428817272186279296875p781 {- 3727653085528718 781 (-2.32452e+235)}
; Z = -1.54958634733949285333665102371014654636383056640625p-670 {- 2475116869086052 -670 (-3.16314e-202)}
; -1.6216468975402340557678826371557079255580902099609375p598 x -1.827705256673798128730368262040428817272186279296875p781 -1.54958634733949285333665102371014654636383056640625p-670 == +oo
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
(assert (= x (fp #b1 #b11001010101 #b1001111100100100010000000100011010011000010111001111)))
(assert (= y (fp #b1 #b11100001100 #b1101001111100100011111011110000000100100001010001110)))
(assert (= z (fp #b1 #b00101100001 #b1000110010110001101100001101110000100110101101100100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
