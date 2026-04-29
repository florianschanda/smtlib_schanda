(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.108891919498395939314150382415391504764556884765625p813 {+ 490405608076634 813 (6.05725e+244)}
; Y = -1.3689019727985127783398411338566802442073822021484375p-41 {- 1661386787231623 -41 (-6.22505e-013)}
; 1.108891919498395939314150382415391504764556884765625p813 = -1.3689019727985127783398411338566802442073822021484375p-41 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101100 #b0001101111100000010101110100000100001011010101011010)))
(assert (= y (fp #b1 #b01111010110 #b0101111001110000010111000001010010011001011110000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
