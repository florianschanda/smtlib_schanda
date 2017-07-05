(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2471479396238416281761374193592928349971771240234375p58 {- 1113055368795319 58 (-3.59466e+017)}
; Y = -1.030314555009905763682809265446849167346954345703125p-627 {- 136524618646514 -627 (-1.84996e-189)}
; -1.2471479396238416281761374193592928349971771240234375p58 > -1.030314555009905763682809265446849167346954345703125p-627 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111001 #b0011111101000101000101100101110111110101010010110111)))
(assert (= y (fp #b1 #b00110001100 #b0000011111000010101100011101011001011100001111110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
