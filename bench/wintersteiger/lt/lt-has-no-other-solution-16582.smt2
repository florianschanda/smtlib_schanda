(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3134990393512728790170740467146970331668853759765625p888 {+ 1411874156803401 888 (2.7106e+267)}
; Y = 1.0632364648768153347901943561737425625324249267578125p731 {+ 284791719655453 731 (1.20104e+220)}
; 1.3134990393512728790170740467146970331668853759765625p888 < 1.0632364648768153347901943561737425625324249267578125p731 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101110111 #b0101000001000001011110010001100101010111010101001001)))
(assert (= y (fp #b0 #b11011011010 #b0001000000110000010000111101010010001111100000011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
