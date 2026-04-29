(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.070116654582817350416235058219172060489654541015625p942 {+ 315777339451642 942 (3.9782e+283)}
; Y = 1.10757854842625391711408155970275402069091796875p-292 {+ 484490710605536 -292 (1.39192e-088)}
; 1.070116654582817350416235058219172060489654541015625p942 > 1.10757854842625391711408155970275402069091796875p-292 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101101 #b0001000111110011001010100100001001010110100011111010)))
(assert (= y (fp #b0 #b01011011011 #b0001101110001010010001001000101100111101111011100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
