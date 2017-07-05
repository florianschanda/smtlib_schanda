(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.638294487706373647739610532880760729312896728515625p808 {+ 2874622816987066 808 (2.79659e+243)}
; Y = -1.360874540918047159721027128398418426513671875p-871 {- 1625234448006016 -871 (-8.64354e-263)}
; 1.638294487706373647739610532880760729312896728515625p808 + -1.360874540918047159721027128398418426513671875p-871 == 1.638294487706373647739610532880760729312896728515625p808
; [HW: 1.638294487706373647739610532880760729312896728515625p808] 

; mpf : + 2874622816987066 808
; mpfd: + 2874622816987066 808 (2.79659e+243) class: Pos. norm. non-zero
; hwf : + 2874622816987066 808 (2.79659e+243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100111 #b1010001101100111010001000111110111101010011110111010)))
(assert (= y (fp #b1 #b00010011000 #b0101110001100010010001100001111100110011101110000000)))
(assert (= r (fp #b0 #b11100100111 #b1010001101100111010001000111110111101010011110111010)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
