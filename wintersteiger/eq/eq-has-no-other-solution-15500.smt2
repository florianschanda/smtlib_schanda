(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.503873084443130725418313886621035635471343994140625p-329 {- 2269242635340106 -329 (-1.37513e-099)}
; +zero = -1.503873084443130725418313886621035635471343994140625p-329 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01010110110 #b1000000011111101110100111001001100000100100101001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
