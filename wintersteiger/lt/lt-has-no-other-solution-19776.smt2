(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.520992711457527235552333877421915531158447265625p-198 {- 2346342581182864 -198 (-3.78606e-060)}
; Y = -1.4236326002335524254505116914515383541584014892578125p594 {- 1907871620553821 594 (-9.23029e+178)}
; -1.520992711457527235552333877421915531158447265625p-198 < -1.4236326002335524254505116914515383541584014892578125p594 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111001 #b1000010101011111110001110100000100101010000110010000)))
(assert (= y (fp #b1 #b11001010001 #b0110110001110011001011111010001110000101110001011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
