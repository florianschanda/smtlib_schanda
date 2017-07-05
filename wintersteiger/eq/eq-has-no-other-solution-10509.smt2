(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4292106557430603874792041096952743828296661376953125p391 {+ 1932992949267893 391 (7.20816e+117)}
; Y = 1.97407449488823960592753792298026382923126220703125p-934 {+ 4386841532209780 -934 (1.3594e-281)}
; 1.4292106557430603874792041096952743828296661376953125p391 = 1.97407449488823960592753792298026382923126220703125p-934 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000110 #b0110110111100000101111111110000110000010110110110101)))
(assert (= y (fp #b0 #b00001011001 #b1111100101011100111100100011001101101001101001110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
