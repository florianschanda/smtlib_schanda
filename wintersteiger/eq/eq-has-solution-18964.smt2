(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.980039753763302545763735906803049147129058837890625p129 {- 4413706669856682 129 (-1.34755e+039)}
; Y = 1.335212271164810005075196386314928531646728515625p178 {+ 1509661859507856 178 (5.11552e+053)}
; -1.980039753763302545763735906803049147129058837890625p129 = 1.335212271164810005075196386314928531646728515625p178 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010000000 #b1111101011100011111000101010001100110001011110101010)))
(assert (= y (fp #b0 #b10010110001 #b0101010111010000011110001010110111011110111010010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
