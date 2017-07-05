(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.206160278338758384819584534852765500545501708984375p804 {- 928463352705030 804 (-1.28683e+242)}
; Y = -1.692121867085246922357555376947857439517974853515625p-82 {- 3117039782700090 -82 (-3.49923e-025)}
; -1.206160278338758384819584534852765500545501708984375p804 < -1.692121867085246922357555376947857439517974853515625p-82 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100011 #b0011010011000110111010111000010100110011000000000110)))
(assert (= y (fp #b1 #b01110101101 #b1011000100101110111001100000111111111010010000111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
