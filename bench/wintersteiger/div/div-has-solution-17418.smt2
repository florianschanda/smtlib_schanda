(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.345959353245821166211726449546404182910919189453125p458 {+ 1558062414363218 458 (1.00177e+138)}
; Y = 1.213333180145097056623626485816203057765960693359375p-897 {+ 960767230607222 -897 (1.14835e-270)}
; 1.345959353245821166211726449546404182910919189453125p458 / 1.213333180145097056623626485816203057765960693359375p-897 == +oo
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
(assert (= x (fp #b0 #b10111001001 #b0101100010010000110010101100101111101111101001010010)))
(assert (= y (fp #b0 #b00001111110 #b0011011010011101000000001101011111011111111101110110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
