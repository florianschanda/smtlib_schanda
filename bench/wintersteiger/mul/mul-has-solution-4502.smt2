(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.353690738242922630973907871521078050136566162109375p806 {+ 1592881476955222 806 (5.77691e+242)}
; Y = 1.93753359067888286659808727563358843326568603515625p511 {+ 4222275929628740 511 (1.2989e+154)}
; 1.353690738242922630973907871521078050136566162109375p806 * 1.93753359067888286659808727563358843326568603515625p511 == +oo
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
(assert (= x (fp #b0 #b11100100101 #b0101101010001011011110011110100110100110110001010110)))
(assert (= y (fp #b0 #b10111111110 #b1111000000000010001100111000111011011110000001000100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
