(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9162474960148403457793619963922537863254547119140625p136 {+ 4126411881631585 136 (1.66929e+041)}
; Y = 1.4184617423602807750881993342773057520389556884765625p-603 {+ 1884584146962569 -603 (4.27297e-182)}
; 1.9162474960148403457793619963922537863254547119140625p136 < 1.4184617423602807750881993342773057520389556884765625p-603 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010000111 #b1110101010001111001100100010011001101100111101100001)))
(assert (= y (fp #b0 #b00110100100 #b0110101100100000010011110000101000010000100010001001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
