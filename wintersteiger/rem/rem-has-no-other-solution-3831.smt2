(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7337825530056709677495518917567096650600433349609375p593 {- 3304662832287311 593 (-5.62059e+178)}
; Y = 1.7369098270912044501557147668791003525257110595703125p262 {+ 3318746822693605 262 (1.28717e+079)}
; -1.7337825530056709677495518917567096650600433349609375p593 % 1.7369098270912044501557147668791003525257110595703125p262 == -1.21751566750521789117556181736290454864501953125p262
; [HW: -1.21751566750521789117556181736290454864501953125p262] 

; mpf : - 979603479123744 262
; mpfd: - 979603479123744 262 (-9.02264e+078) class: Neg. norm. non-zero
; hwf : - 979603479123744 262 (-9.02264e+078) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010000 #b1011101111011001001011000110001110001000111001001111)))
(assert (= y (fp #b0 #b10100000101 #b1011110010100110000111110101011101110101001011100101)))
(assert (= r (fp #b0 #b10100000100 #x09ee08024f78a)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
