(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.706963635783691035641140842926688492298126220703125p-721 {+ 3183881166679922 -721 (1.54738e-217)}
; +zero % 1.706963635783691035641140842926688492298126220703125p-721 == +zero
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
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00100101110 #b1011010011111011100100011001111100100110111101110010)))
(assert (= r (_ +zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
