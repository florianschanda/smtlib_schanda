(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9687331179068758846284481478505767881870269775390625p142 {+ 4362786108826865 142 (1.09761e+043)}
; Y = -1.3044320787792200722066127127618528902530670166015625p914 {- 1371040196549721 914 (-1.8065e+275)}
; 1.9687331179068758846284481478505767881870269775390625p142 % -1.3044320787792200722066127127618528902530670166015625p914 == 1.9687331179068758846284481478505767881870269775390625p142
; [HW: 1.9687331179068758846284481478505767881870269775390625p142] 

; mpf : + 4362786108826865 142
; mpfd: + 4362786108826865 142 (1.09761e+043) class: Pos. norm. non-zero
; hwf : + 4362786108826865 142 (1.09761e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001101 #b1111011111111110111001001100001111110110010011110001)))
(assert (= y (fp #b1 #b11110010001 #b0100110111101111010000101011111000110101110001011001)))
(assert (= r (fp #b0 #b10010001101 #xf7fee4c3f64f1)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
