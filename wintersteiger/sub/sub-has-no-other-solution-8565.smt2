(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5196046705725991809998731696396134793758392333984375p159 {- 2340091400770727 159 (-1.11045e+048)}
; Y = 1.589566438233735112817157641984522342681884765625p806 {+ 2655171191539600 806 (6.78352e+242)}
; -1.5196046705725991809998731696396134793758392333984375p159 - 1.589566438233735112817157641984522342681884765625p806 == -1.5895664382337353348617625670158304274082183837890625p806
; [HW: -1.5895664382337353348617625670158304274082183837890625p806] 

; mpf : - 2655171191539601 806
; mpfd: - 2655171191539601 806 (-6.78352e+242) class: Neg. norm. non-zero
; hwf : - 2655171191539601 806 (-6.78352e+242) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011110 #b1000010100000100110011111100101011110101010010100111)))
(assert (= y (fp #b0 #b11100100101 #b1001011011101101110100110111101100001000011110010000)))
(assert (= r (fp #b1 #b11100100101 #b1001011011101101110100110111101100001000011110010001)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
