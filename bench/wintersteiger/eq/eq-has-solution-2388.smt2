(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.54394234143799025105181499384343624114990234375p-461 {+ 2449698526211168 -461 (2.593e-139)}
; Y = -1.751876313698414566744077092153020203113555908203125p542 {- 3386149886200882 542 (-2.52209e+163)}
; 1.54394234143799025105181499384343624114990234375p-461 = -1.751876313698414566744077092153020203113555908203125p542 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110010 #b1000101100111111110011100010011101100010110001100000)))
(assert (= y (fp #b1 #b11000011101 #b1100000001111010111101110101000111111000110000110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
