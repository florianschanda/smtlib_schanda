(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0228081360591312343188974409713409841060638427734375p-19 {+ 102718713056919 -19 (1.95085e-006)}
; Y = -1.8100242843644116508272645660326816141605377197265625p-908 {- 3648025065224617 -908 (-8.36466e-274)}
; 1.0228081360591312343188974409713409841060638427734375p-19 > -1.8100242843644116508272645660326816141605377197265625p-908 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111101100 #b0000010111010110110000010000011001110100111010010111)))
(assert (= y (fp #b1 #b00001110011 #b1100111101011101110000000110001001001111100110101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
