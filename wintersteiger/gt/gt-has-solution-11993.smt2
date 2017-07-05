(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.55682704590093035079689798294566571712493896484375p484 {+ 2507726076429244 484 (7.77604e+145)}
; Y = 1.6852386491831639059313374673365615308284759521484375p-558 {+ 3086040525121159 -558 (1.78617e-168)}
; 1.55682704590093035079689798294566571712493896484375p484 > 1.6852386491831639059313374673365615308284759521484375p-558 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100011 #b1000111010001100001101111001111110101100001110111100)))
(assert (= y (fp #b0 #b00111010001 #b1010111101101011110011001101010000110010011010000111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
