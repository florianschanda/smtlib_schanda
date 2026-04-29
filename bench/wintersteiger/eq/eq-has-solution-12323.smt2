(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1203956978909739294891778627061285078525543212890625p21 {+ 542214020158801 21 (2.34964e+006)}
; Y = -1.935278694758618911464509437792003154754638671875p66 {- 4212120781202480 66 (-1.42798e+020)}
; 1.1203956978909739294891778627061285078525543212890625p21 = -1.935278694758618911464509437792003154754638671875p66 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000010100 #b0001111011010010010000001010000100000101010101010001)))
(assert (= y (fp #b1 #b10001000001 #b1110111101101110011011001010111010100010010000110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
