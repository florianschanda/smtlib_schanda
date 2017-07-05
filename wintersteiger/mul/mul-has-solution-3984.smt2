(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.870834993767978016165898225153796374797821044921875p973 {+ 3921892153434654 973 (1.49356e+293)}
; Y = -1.7930904849242528253938644411391578614711761474609375p300 {- 3571762012375951 300 (-3.65259e+090)}
; 1.870834993767978016165898225153796374797821044921875p973 * -1.7930904849242528253938644411391578614711761474609375p300 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001100 #b1101111011101111000010101100101001110010001000011110)))
(assert (= y (fp #b1 #b10100101011 #b1100101100000111111110100101111110000100101110001111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
