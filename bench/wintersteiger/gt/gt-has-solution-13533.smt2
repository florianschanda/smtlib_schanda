(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.809707797011463004110964902793057262897491455078125p-747 {- 3646599732899810 -747 (-2.44457e-225)}
; Y = 1.6225519778375916413182267206138931214809417724609375p789 {+ 2803724855408143 789 (5.28281e+237)}
; -1.809707797011463004110964902793057262897491455078125p-747 > 1.6225519778375916413182267206138931214809417724609375p789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010100 #b1100111101001001000000101001101101111010111111100010)))
(assert (= y (fp #b0 #b11100010100 #b1001111101011111100100010000000011011111011000001111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
