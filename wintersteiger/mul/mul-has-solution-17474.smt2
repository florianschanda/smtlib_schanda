(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4214732156864402501383892740705050528049468994140625p231 {+ 1898146617112097 231 (4.90532e+069)}
; Y = 1.5705118550416845568662438381579704582691192626953125p854 {+ 2569356977776181 854 (1.8865e+257)}
; 1.4214732156864402501383892740705050528049468994140625p231 * 1.5705118550416845568662438381579704582691192626953125p854 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100110 #b0110101111100101101010110010110110000011011000100001)))
(assert (= y (fp #b0 #b11101010101 #b1001001000001101000100001001111101100010011000110101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
