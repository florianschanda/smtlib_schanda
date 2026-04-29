(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3611741474800165274672281157108955085277557373046875p-731 {+ 1626583756006859 -731 (1.205e-220)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = 1.826396689078001234207704328582622110843658447265625p819 {+ 3721759820991898 819 (6.38501e+246)}
; 1.3611741474800165274672281157108955085277557373046875p-731 x -oo 1.826396689078001234207704328582622110843658447265625p819 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100100 #b0101110001110101111010001010111110010110010111001011)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b0 #b11100110010 #b1101001110001110101110111100000100011100110110011010)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
