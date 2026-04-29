(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6265622657862122135696836267015896737575531005859375p916 {+ 2821785586719199 916 (9.01045e+275)}
; Y = -1.4710313268305494904808483624947257339954376220703125p504 {- 2121336507993893 504 (-7.70442e+151)}
; 1.6265622657862122135696836267015896737575531005859375p916 = -1.4710313268305494904808483624947257339954376220703125p504 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010011 #b1010000001100110011000100111100001110101100111011111)))
(assert (= y (fp #b1 #b10111110111 #b0111100010010101100000100101000000100000111100100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
