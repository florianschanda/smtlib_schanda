(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.330462841617567892882334490423090755939483642578125p-739 {+ 1488272330368674 -739 (4.60083e-223)}
; Y = -1.0709083597959507816455015927203930914402008056640625p-373 {- 319342862754497 -373 (-5.56627e-113)}
; 1.330462841617567892882334490423090755939483642578125p-739 * -1.0709083597959507816455015927203930914402008056640625p-373 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011100 #b0101010010011001001101100111100101001010011010100010)))
(assert (= y (fp #b1 #b01010001010 #b0001001000100111000011001101111001010110001011000001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
