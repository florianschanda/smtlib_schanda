(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.104591456899389978474346207804046571254730224609375p1001 {+ 471038046318230 1001 (2.36716e+301)}
; Y = 1.748563319133412452544007464894093573093414306640625p-644 {+ 3371229485112458 -644 (2.39532e-194)}
; 1.104591456899389978474346207804046571254730224609375p1001 > 1.748563319133412452544007464894093573093414306640625p-644 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101000 #b0001101011000110100000010111011011010010111010010110)))
(assert (= y (fp #b0 #b00101111011 #b1011111110100001110110000111111010101001110010001010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
