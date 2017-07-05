(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7579680959516588156787975094630382955074310302734375p44 {- 3413584834486615 44 (-3.09265e+013)}
; Y = -1.34942854628277597583974056760780513286590576171875p-216 {- 1573686270831724 -216 (-1.28136e-065)}
; -1.7579680959516588156787975094630382955074310302734375p44 > -1.34942854628277597583974056760780513286590576171875p-216 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000101011 #b1100001000001010001100100111011110000110000101010111)))
(assert (= y (fp #b1 #b01100100111 #b0101100101110100001001100011001010010010110001101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
