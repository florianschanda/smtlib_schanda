(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8022699698321382744126140096341259777545928955078125p692 {- 3613102737186557 692 (-3.7032e+208)}
; Y = 1.587603587690504358675980256521143019199371337890625p186 {+ 2646331298564522 186 (1.55712e+056)}
; -1.8022699698321382744126140096341259777545928955078125p692 < 1.587603587690504358675980256521143019199371337890625p186 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010110011 #b1100110101100001100100001001001011111101111011111101)))
(assert (= y (fp #b0 #b10010111001 #b1001011001101101001100000101000000100100100110101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
