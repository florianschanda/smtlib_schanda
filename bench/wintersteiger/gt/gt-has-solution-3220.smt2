(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.78191300341138880725111448555253446102142333984375p741 {+ 3521423110799676 741 (2.06117e+223)}
; Y = -1.6746252679900364146448055180371738970279693603515625p-743 {- 3038242105534649 -743 (-3.61935e-224)}
; 1.78191300341138880725111448555253446102142333984375p741 > -1.6746252679900364146448055180371738970279693603515625p-743 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100100 #b1100100000101011011100110101100111111000000100111100)))
(assert (= y (fp #b1 #b00100011000 #b1010110010110100001111011101011100010010100010111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
