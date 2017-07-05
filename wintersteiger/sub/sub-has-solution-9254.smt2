(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2149626755346953910219554018112830817699432373046875p-50 {+ 968105825436619 -50 (1.0791e-015)}
; Y = -1.2990469374255579904087198883644305169582366943359375p-65 {- 1346787675956031 -65 (-3.52107e-020)}
; 1.2149626755346953910219554018112830817699432373046875p-50 - -1.2990469374255579904087198883644305169582366943359375p-65 == 1.2150023193010961453097706908010877668857574462890625p-50
; [HW: 1.2150023193010961453097706908010877668857574462890625p-50] 

; mpf : + 968284365088209 -50
; mpfd: + 968284365088209 -50 (1.07914e-015) class: Pos. norm. non-zero
; hwf : + 968284365088209 -50 (1.07914e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001101 #b0011011100000111110010110011110101001000001111001011)))
(assert (= y (fp #b1 #b01110111110 #b0100110010001110010101110001000000110110001100111111)))
(assert (= r (fp #b0 #b01111001101 #b0011011100001010011001000101100111110110010111010001)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
