(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0993413442852926209525321610271930694580078125p22 {+ 447393641105728 22 (4.61097e+006)}
; Y = -1.546538033394780686791136758984066545963287353515625p689 {- 2461388483540538 689 (-3.97217e+207)}
; 1.0993413442852926209525321610271930694580078125p22 > -1.546538033394780686791136758984066545963287353515625p689 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000010101 #b0001100101101110011011110011000011011000100101000000)))
(assert (= y (fp #b1 #b11010110000 #b1000101111101001111010101010001101110011011000111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
