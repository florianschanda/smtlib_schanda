(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8795961343495568574013532270328141748905181884765625p-1018 {- 3961348822893193 -1018 (-6.69158e-307)}
; Y = -1.0107836541822468046092353688436560332775115966796875p-97 {- 48565260956859 -97 (-6.37894e-030)}
; -1.8795961343495568574013532270328141748905181884765625p-1018 * -1.0107836541822468046092353688436560332775115966796875p-97 == +zero
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
(assert (= x (fp #b1 #b00000000101 #b1110000100101101001101100101011010111000001010001001)))
(assert (= y (fp #b1 #b01110011110 #b0000001011000010101101111011001000001011010010111011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
