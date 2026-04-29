(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.887216220734958316285201362916268408298492431640625p530 {+ 3995666641099018 530 (6.63314e+159)}
; Y = -1.7420922001272265422500140630290843546390533447265625p-731 {- 3342086155967529 -731 (-1.54221e-220)}
; 1.887216220734958316285201362916268408298492431640625p530 = -1.7420922001272265422500140630290843546390533447265625p-731 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000010001 #b1110001100100000100110100010110010001001100100001010)))
(assert (= y (fp #b1 #b00100100100 #b1011110111111001110000010010001000101001110000101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
