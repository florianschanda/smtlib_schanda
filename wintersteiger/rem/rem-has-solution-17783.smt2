(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.372561826016446051568209441029466688632965087890625p20 {+ 1677869300820138 20 (1.43924e+006)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.372561826016446051568209441029466688632965087890625p20 % +oo == 1.372561826016446051568209441029466688632965087890625p20
; [HW: 1.372561826016446051568209441029466688632965087890625p20] 

; mpf : + 1677869300820138 20
; mpfd: + 1677869300820138 20 (1.43924e+006) class: Pos. norm. non-zero
; hwf : + 1677869300820138 20 (1.43924e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010011 #b0101111101100000001101100011101001111010100010101010)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b0 #b10000010011 #x5f60363a7a8aa)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
