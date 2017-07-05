(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2817150671375137083174422514275647699832916259765625p689 {+ 1268731871385161 689 (3.29199e+207)}
; Y = -1.5147209202406506367566407789126969873905181884765625p-431 {- 2318096944595593 -431 (-2.73152e-130)}
; 1.2817150671375137083174422514275647699832916259765625p689 / -1.5147209202406506367566407789126969873905181884765625p-431 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110000 #b0100100000011110011110101000100000100101011001001001)))
(assert (= y (fp #b1 #b01001010000 #b1000001111000100110000000000111100000000001010001001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
