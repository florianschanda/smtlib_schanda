(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6694633982923325898894972851849161088466644287109375p358 {+ 3014995111087535 358 (9.80201e+107)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.6694633982923325898894972851849161088466644287109375p358 % -oo == 1.6694633982923325898894972851849161088466644287109375p358
; [HW: 1.6694633982923325898894972851849161088466644287109375p358] 

; mpf : + 3014995111087535 358
; mpfd: + 3014995111087535 358 (9.80201e+107) class: Pos. norm. non-zero
; hwf : + 3014995111087535 358 (9.80201e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100101 #b1010101101100001111101000000100110001000110110101111)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b10101100101 #xab61f40988daf)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
