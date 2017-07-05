(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3223239180793624480969583601108752191066741943359375p108 {- 1451617877354815 108 (-4.29119e+032)}
; Y = -1.2366747610360169229437588001019321382045745849609375p-374 {- 1065888365609807 -374 (-3.21394e-113)}
; -1.3223239180793624480969583601108752191066741943359375p108 = -1.2366747610360169229437588001019321382045745849609375p-374 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001101011 #b0101001010000011110100011111111011011110100100111111)))
(assert (= y (fp #b1 #b01010001001 #b0011110010010110101101111001011001110000001101001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
