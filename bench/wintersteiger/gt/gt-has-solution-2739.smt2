(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7752284593671683321502996477647684514522552490234375p-13 {- 3491318600732983 -13 (-0.000216703)}
; Y = 1.7458838278300434776468819109140895307064056396484375p756 {+ 3359162129077063 756 (6.61747e+227)}
; -1.7752284593671683321502996477647684514522552490234375p-13 > 1.7458838278300434776468819109140895307064056396484375p756 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110010 #b1100011001110101010111110100111111101001000100110111)))
(assert (= y (fp #b0 #b11011110011 #b1011111011110010001111100001011100100101001101000111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
