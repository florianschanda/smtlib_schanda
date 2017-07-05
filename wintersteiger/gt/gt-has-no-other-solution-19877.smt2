(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6568418545908532024668602389283478260040283203125p740 {- 2958152731576712 740 (-9.58248e+222)}
; Y = 1.736658694281986381469096158980391919612884521484375p-116 {+ 3317615821067590 -116 (2.09043e-035)}
; -1.6568418545908532024668602389283478260040283203125p740 > 1.736658694281986381469096158980391919612884521484375p-116 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011100011 #b1010100000100110110010011010110000011100100110001000)))
(assert (= y (fp #b0 #b01110001011 #b1011110010010101101010100000100001000001010101000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
