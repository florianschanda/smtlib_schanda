(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7123042864332556067807900035404600203037261962890625p-763 {+ 3207933318955217 -763 (3.52935e-230)}
; Y = 1.9869771015975408179343730807886458933353424072265625p809 {+ 4444949706977897 809 (6.78359e+243)}
; 1.7123042864332556067807900035404600203037261962890625p-763 > 1.9869771015975408179343730807886458933353424072265625p809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000100 #b1011011001011001100100101101111100001000000011010001)))
(assert (= y (fp #b0 #b11100101000 #b1111110010101010100010000000010101000011001001101001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
