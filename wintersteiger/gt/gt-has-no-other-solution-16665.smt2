(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8222590542080776554456633675727061927318572998046875p982 {- 3703125570133515 982 (-7.44845e+295)}
; Y = 1.802093935695621151893419664702378213405609130859375p-89 {+ 3612309949914934 -89 (2.91144e-027)}
; -1.8222590542080776554456633675727061927318572998046875p982 > 1.802093935695621151893419664702378213405609130859375p-89 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010101 #b1101001001111111100100011100001010101001111000001011)))
(assert (= y (fp #b0 #b01110100110 #b1100110101010110000001110011011000100001111100110110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
