(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.438695453442395244536555765080265700817108154296875p688 {+ 1975708680652302 688 (1.84759e+207)}
; Y = -1.442162404213416238007994252257049083709716796875p928 {- 1991322438852784 928 (-3.27228e+279)}
; 1.438695453442395244536555765080265700817108154296875p688 = -1.442162404213416238007994252257049083709716796875p928 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101111 #b0111000001001110010110000110000101110000011000001110)))
(assert (= y (fp #b1 #b11110011111 #b0111000100110001100011100010100110011110000010110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
