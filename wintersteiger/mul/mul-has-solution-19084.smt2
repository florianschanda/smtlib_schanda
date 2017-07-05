(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.21210532894345757171095101512037217617034912109375p-867 {+ 955237480393052 -867 (1.23178e-261)}
; Y = 1.4489496546790967546058936932240612804889678955078125p-267 {+ 2021889497520893 -267 (6.11005e-081)}
; 1.21210532894345757171095101512037217617034912109375p-867 * 1.4489496546790967546058936932240612804889678955078125p-267 == +zero
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
(assert (= x (fp #b0 #b00010011100 #b0011011001001100100010001110101100011110100101011100)))
(assert (= y (fp #b0 #b01011110100 #b0111001011101110010111010101010001100101101011111101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
