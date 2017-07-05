(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7469980990870521697644335290533490478992462158203125p802 {- 3364180360694917 802 (-4.6596e+241)}
; Y = 1.80316269931075368049278040416538715362548828125p752 {+ 3617123233333792 752 (4.27161e+226)}
; -1.7469980990870521697644335290533490478992462158203125p802 > 1.80316269931075368049278040416538715362548828125p752 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100001 #b1011111100111011010001000111010111000000110010000101)))
(assert (= y (fp #b0 #b11011101111 #b1100110110011100000100100001011011101000001000100000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
