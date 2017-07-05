(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3559415914011136994332673566532321274280548095703125p576 {+ 1603018418399717 576 (3.35366e+173)}
; Y = -1.2482854936214249352843808082980103790760040283203125p-823 {- 1118178456554949 -823 (-2.23166e-248)}
; 1.3559415914011136994332673566532321274280548095703125p576 > -1.2482854936214249352843808082980103790760040283203125p-823 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111111 #b0101101100011110111111001111011001011010100111100101)))
(assert (= y (fp #b1 #b00011001000 #b0011111110001111101000110101101100101100110111000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
