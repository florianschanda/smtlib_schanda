(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0562880205249012277590736630372703075408935546875p-592 {- 253498708261368 -592 (-6.51666e-179)}
; Y = 1.1301281392187429997164827000233344733715057373046875p638 {+ 586045039295947 638 (1.28904e+192)}
; -1.0562880205249012277590736630372703075408935546875p-592 - 1.1301281392187429997164827000233344733715057373046875p638 == -1.1301281392187429997164827000233344733715057373046875p638
; [HW: -1.1301281392187429997164827000233344733715057373046875p638] 

; mpf : - 586045039295947 638
; mpfd: - 586045039295947 638 (-1.28904e+192) class: Neg. norm. non-zero
; hwf : - 586045039295947 638 (-1.28904e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110101111 #b0000111001101000111001000100011101001111100111111000)))
(assert (= y (fp #b0 #b11001111101 #b0010000101010000000100111110011000111011110111001011)))
(assert (= r (fp #b1 #b11001111101 #b0010000101010000000100111110011000111011110111001011)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
