(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6292621129167790261504933368996717035770416259765625p-826 {+ 2833944617250377 -826 (3.64095e-249)}
; Y = 1.1808314937376584996542305816547013819217681884765625p728 {+ 814392647813769 728 (1.66734e+219)}
; 1.6292621129167790261504933368996717035770416259765625p-826 / 1.1808314937376584996542305816547013819217681884765625p728 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000101 #b1010000100010111010100100110001110010110111001001001)))
(assert (= y (fp #b0 #b11011010111 #b0010111001001010111110010000011110110000101010001001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
