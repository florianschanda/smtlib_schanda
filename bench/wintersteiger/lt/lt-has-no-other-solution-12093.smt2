(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2322914449194797281705859859357587993144989013671875p-104 {- 1046147664780723 -104 (-6.07567e-032)}
; Y = -1.70120754360146175798718104488216340541839599609375p-593 {- 3157958032072924 -593 (-5.24771e-179)}
; -1.2322914449194797281705859859357587993144989013671875p-104 < -1.70120754360146175798718104488216340541839599609375p-593 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010111 #b0011101101110111011100111011111100010001110110110011)))
(assert (= y (fp #b1 #b00110101110 #b1011001110000010010101100110101101111010000011011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
