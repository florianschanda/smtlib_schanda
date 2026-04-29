(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6292821888914212902221834156080149114131927490234375p661 {+ 2834035031402295 661 (1.55892e+199)}
; Y = -1.7405243298695574072354474992607720196247100830078125p749 {- 3335025096059325 749 (-5.15403e+225)}
; 1.6292821888914212902221834156080149114131927490234375p661 = -1.7405243298695574072354474992607720196247100830078125p749 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010100 #b1010000100011000101000110011010100111110011100110111)))
(assert (= y (fp #b1 #b11011101100 #b1011110110010011000000001010001010101110100110111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
