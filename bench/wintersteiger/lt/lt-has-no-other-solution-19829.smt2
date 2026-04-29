(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7873464488443289166497152109513990581035614013671875p-142 {- 3545893173626803 -142 (-3.2059e-043)}
; Y = 1.447423816504244342695528757758438587188720703125p639 {+ 2015017733285200 639 (3.30189e+192)}
; -1.7873464488443289166497152109513990581035614013671875p-142 < 1.447423816504244342695528757758438587188720703125p639 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110001 #b1100100110001111100010010111000001101000011110110011)))
(assert (= y (fp #b0 #b11001111110 #b0111001010001010010111100000001101010110010101010000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
