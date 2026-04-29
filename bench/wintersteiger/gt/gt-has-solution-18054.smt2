(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.297399153654519299294634038233198225498199462890625p-139 {- 1339366717578794 -139 (-1.86168e-042)}
; Y = 1.229556079758052700157122671953402459621429443359375p666 {+ 1033828675258998 666 (3.76466e+200)}
; -1.297399153654519299294634038233198225498199462890625p-139 > 1.229556079758052700157122671953402459621429443359375p666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110100 #b0100110000100010010110011101011011001101111000101010)))
(assert (= y (fp #b0 #b11010011001 #b0011101011000100001011111110111100101000101001110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
