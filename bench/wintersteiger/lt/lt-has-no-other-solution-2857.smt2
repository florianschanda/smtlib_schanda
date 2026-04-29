(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.24169592649725313293629369582049548625946044921875p777 {+ 1088501684509996 777 (9.87011e+233)}
; Y = 1.2720851525781167179474095974001102149486541748046875p-916 {+ 1225362591763851 -916 (2.29636e-276)}
; 1.24169592649725313293629369582049548625946044921875p777 < 1.2720851525781167179474095974001102149486541748046875p-916 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001000 #b0011110111011111110010001100001111100001110100101100)))
(assert (= y (fp #b0 #b00001101011 #b0100010110100111010111110110000000001100110110001011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
