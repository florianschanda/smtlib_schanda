(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2836169954209843968584436879609711468219757080078125p-614 {- 1277297394893885 -614 (-1.88807e-185)}
; Y = -1.826205625461607251480700142565183341503143310546875p-643 {- 3720899346960302 -643 (-5.00337e-194)}
; -1.2836169954209843968584436879609711468219757080078125p-614 < -1.826205625461607251480700142565183341503143310546875p-643 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011001 #b0100100010011011000111111001011111101100010000111101)))
(assert (= y (fp #b1 #b00101111100 #b1101001110000010001101100011110100100000111110101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
