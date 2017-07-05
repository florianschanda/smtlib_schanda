(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.935560887186230427658983899164013564586639404296875p-933 {- 4213391662914318 -933 (-2.66576e-281)}
; Y = 1.4312887799824149936966932727955281734466552734375p90 {+ 1942351988817880 90 (1.77185e+027)}
; -1.935560887186230427658983899164013564586639404296875p-933 / 1.4312887799824149936966932727955281734466552734375p90 == -0.67616015518895178360025965957902371883392333984375p-1022
; [HW: -0.67616015518895178360025965957902371883392333984375p-1022] 

; mpf : - 3045154622951740 -1023
; mpfd: - 3045154622951740 -1023 (-1.50451e-308) class: Neg. denorm.
; hwf : - 3045154622951740 -1023 (-1.50451e-308) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011010 #b1110111110000000111010110001010111100001101100001110)))
(assert (= y (fp #b0 #b10001011001 #b0110111001101000111100010000010100100111111111011000)))
(assert (= r (fp #b1 #b00000000000 #b1010110100011000110101001111100101100101000100111100)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
