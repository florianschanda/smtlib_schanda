(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0332597795085949332616337414947338402271270751953125p1022 {+ 149788730601333 1022 (4.64371e+307)}
; Y = 1.23204293331673309097595847561024129390716552734375p951 {+ 1045028468019196 951 (2.34505e+286)}
; 1.0332597795085949332616337414947338402271270751953125p1022 * 1.23204293331673309097595847561024129390716552734375p951 == +oo
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
(assert (= x (fp #b0 #b11111111101 #b0000100010000011101101101000000101000010111101110101)))
(assert (= y (fp #b0 #b11110110110 #b0011101101100111001010100110100111011100111111111100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
