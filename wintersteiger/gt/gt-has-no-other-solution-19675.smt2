(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8767844683966441454714413339388556778430938720703125p863 {- 3948686205155365 863 (-1.15425e+260)}
; Y = -1.715293238327954217226078981184400618076324462890625p-813 {- 3221394361594410 -813 (-3.14016e-245)}
; -1.8767844683966441454714413339388556778430938720703125p863 > -1.715293238327954217226078981184400618076324462890625p-813 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011110 #b1110000001110100111100100110100101100111100000100101)))
(assert (= y (fp #b1 #b00011010010 #b1011011100011101011101010010100110101011001000101010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
