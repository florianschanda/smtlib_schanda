(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.350250662215343400163192200125195086002349853515625p-1018 {- 1577388751839290 -1018 (-4.80705e-307)}
; Y = -1.043644039263775358250541103188879787921905517578125p499 {- 196555278965282 499 (-1.70813e+150)}
; -1.350250662215343400163192200125195086002349853515625p-1018 / -1.043644039263775358250541103188879787921905517578125p499 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000101 #b0101100110101010000001110000001110011110000000111010)))
(assert (= y (fp #b1 #b10111110010 #b0000101100101100010000010111100101001101101000100010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
