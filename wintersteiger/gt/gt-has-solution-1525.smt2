(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.753642503805277641504289931617677211761474609375p962 {- 3394104099308016 962 (-6.83592e+289)}
; Y = -1.341589515409980837290504496195353567600250244140625p453 {- 1538382414314058 453 (-3.12038e+136)}
; -1.753642503805277641504289931617677211761474609375p962 > -1.341589515409980837290504496195353567600250244140625p453 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111000001 #b1100000011101110101101110001001010111000000111110000)))
(assert (= y (fp #b1 #b10111000100 #b0101011101110010011010010001010101010111101001001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
