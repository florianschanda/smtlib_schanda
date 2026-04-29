(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0725528953265470732958419830538332462310791015625p-999 {+ 326749192357288 -999 (2.00195e-301)}
; Y = 1.4045851621010754239904372298042289912700653076171875p-49 {+ 1822089585278035 -49 (2.49504e-015)}
; 1.0725528953265470732958419830538332462310791015625p-999 > 1.4045851621010754239904372298042289912700653076171875p-49 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011000 #b0001001010010010110100111001100010101000010110101000)))
(assert (= y (fp #b0 #b01111001110 #b0110011110010010111001001010011110101011110001010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
