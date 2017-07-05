(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.873755355247856524414373780018649995326995849609375p-523 {+ 3935044292307222 -523 (6.82378e-158)}
; Y = -1.8888292731020062120705915731377899646759033203125p480 {- 4002931183138184 480 (-5.89645e+144)}
; 1.873755355247856524414373780018649995326995849609375p-523 < -1.8888292731020062120705915731377899646759033203125p480 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110100 #b1101111110101110011011100101001101111110100100010110)))
(assert (= y (fp #b1 #b10111011111 #b1110001110001010010100001011001110110011010110001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
