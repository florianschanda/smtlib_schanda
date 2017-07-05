(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.640606066212120683900366202578879892826080322265625p-936 {+ 2885033241084186 -936 (2.82441e-282)}
; Y = 1.0590670444762937396632196396240033209323883056640625p641 {+ 266014319493313 641 (9.66386e+192)}
; 1.640606066212120683900366202578879892826080322265625p-936 = 1.0590670444762937396632196396240033209323883056640625p641 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010111 #b1010001111111110110000100101100000000000000100011010)))
(assert (= y (fp #b0 #b11010000000 #b0000111100011111000001001001000001001100000011000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
