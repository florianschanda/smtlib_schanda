(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4168689786225823201704088205588050186634063720703125p93 {+ 1877410976786981 93 (1.4032e+028)}
; Y = 1.968327152389317102887389410170726478099822998046875p-860 {+ 4360957802673262 -860 (2.56036e-259)}
; 1.4168689786225823201704088205588050186634063720703125p93 = 1.968327152389317102887389410170726478099822998046875p-860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011100 #b0110101010110111111011001110010111100110101000100101)))
(assert (= y (fp #b0 #b00010100011 #b1111011111100100010010011100101101010111010001101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
