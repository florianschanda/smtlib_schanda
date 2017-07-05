(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8600801384950369499193811861914582550525665283203125p399 {+ 3873456591235013 399 (2.4016e+120)}
; Y = -1.826236270174542486444124733679927885532379150390625p-696 {- 3721037358478058 -696 (-5.55495e-210)}
; 1.8600801384950369499193811861914582550525665283203125p399 = -1.826236270174542486444124733679927885532379150390625p-696 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110001110 #b1101110000101110001101100100001011000110011111000101)))
(assert (= y (fp #b1 #b00101000111 #b1101001110000100001110000101111100101011001011101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
