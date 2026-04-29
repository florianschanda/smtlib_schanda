(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.591043594097319324731643064296804368495941162109375p415 {+ 2661823710136406 415 (1.34626e+125)}
; Y = 1.0522158147046900555920956321642734110355377197265625p-548 {+ 235159123646889 -548 (1.142e-165)}
; 1.591043594097319324731643064296804368495941162109375p415 > 1.0522158147046900555920956321642734110355377197265625p-548 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011110 #b1001011101001110101000100000101100101000100001010110)))
(assert (= y (fp #b0 #b00111011011 #b0000110101011110000001000000000001111101100110101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
