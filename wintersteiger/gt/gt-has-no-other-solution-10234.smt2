(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8682356389968692855774179406580515205860137939453125p649 {+ 3910185700256085 649 (4.36414e+195)}
; Y = 1.8115645055246514250057998651755042374134063720703125p-757 {+ 3654961604667941 -757 (2.38972e-228)}
; 1.8682356389968692855774179406580515205860137939453125p649 > 1.8115645055246514250057998651755042374134063720703125p-757 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001000 #b1101111001000100101100001101101010110110100101010101)))
(assert (= y (fp #b0 #b00100001010 #b1100111111000010101100010000000111010010101000100101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
