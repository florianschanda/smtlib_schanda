(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.024420934015969120167710570967756211757659912109375p-575 {+ 109982109334358 -575 (8.28383e-174)}
; Y = 1.961830346417261949909516260959208011627197265625p776 {+ 4331698789718416 776 (7.79719e+233)}
; 1.024420934015969120167710570967756211757659912109375p-575 = 1.961830346417261949909516260959208011627197265625p776 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000000 #b0000011001000000011100110100100011101111101101010110)))
(assert (= y (fp #b0 #b11100000111 #b1111011000111010100000110111101000101001100110010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
