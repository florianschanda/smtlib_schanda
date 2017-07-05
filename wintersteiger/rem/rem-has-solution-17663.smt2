(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8955285310533145359812579044955782592296600341796875p986 {- 4033101958751355 986 (-1.23967e+297)}
; Y = 1.1273355285537840497767092529102228581905364990234375p-859 {+ 573468238945847 -859 (2.93283e-259)}
; -1.8955285310533145359812579044955782592296600341796875p986 % 1.1273355285537840497767092529102228581905364990234375p-859 == -1.87275773060440542394644580781459808349609375p-866
; [HW: -1.87275773060440542394644580781459808349609375p-866] 

; mpf : - 3930551390334720 -866
; mpfd: - 3930551390334720 -866 (-3.80632e-261) class: Neg. norm. non-zero
; hwf : - 3930551390334720 -866 (-3.80632e-261) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011001 #b1110010101000001010110111001100110000010010001111011)))
(assert (= y (fp #b0 #b00010100100 #b0010000010011001000011111010101011000001111000110111)))
(assert (= r (fp #b1 #b00010011101 #xdf6d0cf646f00)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
