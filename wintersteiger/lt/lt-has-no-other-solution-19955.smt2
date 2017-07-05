(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7204528083880712419073688579373992979526519775390625p319 {+ 3244630999394545 319 (1.83743e+096)}
; Y = -1.109872144683030636969078841502778232097625732421875p-514 {- 494820149852894 -514 (-2.06945e-155)}
; 1.7204528083880712419073688579373992979526519775390625p319 < -1.109872144683030636969078841502778232097625732421875p-514 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111110 #b1011100001101111100110000110001001010110100011110001)))
(assert (= y (fp #b1 #b00111111101 #b0001110000100000100101001011010000100111101011011110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
