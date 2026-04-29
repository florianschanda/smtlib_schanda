(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4404375633688923930009195828461088240146636962890625p370 {+ 1983554446268113 370 (3.46412e+111)}
; Y = -1.0027664489158121252643240950419567525386810302734375p603 {- 12458978306391 603 (-3.3288e+181)}
; 1.4404375633688923930009195828461088240146636962890625p370 > -1.0027664489158121252643240950419567525386810302734375p603 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110001 #b0111000011000000100001000010001010011001011011010001)))
(assert (= y (fp #b1 #b11001011010 #b0000000010110101010011010100111110011110100101010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
