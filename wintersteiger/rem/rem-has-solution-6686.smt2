(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.027136201428819450853779926546849310398101806640625p93 {- 122210586643082 93 (-1.01723e+028)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.027136201428819450853779926546849310398101806640625p93 % +oo == -1.027136201428819450853779926546849310398101806640625p93
; [HW: -1.027136201428819450853779926546849310398101806640625p93] 

; mpf : - 122210586643082 93
; mpfd: - 122210586643082 93 (-1.01723e+028) class: Neg. norm. non-zero
; hwf : - 122210586643082 93 (-1.01723e+028) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011100 #b0000011011110010011001011110100110101100101010001010)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b10001011100 #x06f265e9aca8a)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
