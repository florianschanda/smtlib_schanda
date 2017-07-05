(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.323286777630350297130235048825852572917938232421875p-705 {- 1455954211269854 -705 (-7.86153e-213)}
; Y = -1.873134724516311688802261414821259677410125732421875p-812 {- 3932249219975902 -812 (-6.85824e-245)}
; -1.323286777630350297130235048825852572917938232421875p-705 / -1.873134724516311688802261414821259677410125732421875p-812 == 1.4129114796823325495012113606208004057407379150390625p106
; [HW: 1.4129114796823325495012113606208004057407379150390625p106] 

; mpf : + 1859587986034353 106
; mpfd: + 1859587986034353 106 (1.14629e+032) class: Pos. norm. non-zero
; hwf : + 1859587986034353 106 (1.14629e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111110 #b0101001011000010111011000001100100100110110011011110)))
(assert (= y (fp #b1 #b00011010011 #b1101111110000101110000011101111011001100101011011110)))
(assert (= r (fp #b0 #b10001101001 #b0110100110110100100100010001010101100000111010110001)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
