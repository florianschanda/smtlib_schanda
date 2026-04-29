(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.815621654536122786538498985464684665203094482421875p139 {+ 3673233379444190 139 (1.2653e+042)}
; Y = 1.0880513778653693179876427166163921356201171875p-528 {+ 396548152543936 -528 (1.23826e-159)}
; 1.815621654536122786538498985464684665203094482421875p139 > 1.0880513778653693179876427166163921356201171875p-528 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001010 #b1101000011001100100101001010110000100100010111011110)))
(assert (= y (fp #b0 #b00111101111 #b0001011010001010100010001111110001001100101011000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
