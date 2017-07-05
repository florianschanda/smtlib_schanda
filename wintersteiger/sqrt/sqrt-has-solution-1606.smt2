(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6722726789629163146599921674351207911968231201171875p348 {+ 3027646986468755 348 (9.58839e+104)}
; 1.6722726789629163146599921674351207911968231201171875p348 S == 1.293163825260711607967323288903571665287017822265625p174
; [HW: 1.293163825260711607967323288903571665287017822265625p174] 

; mpf : + 1320292494202650 174
; mpfd: + 1320292494202650 174 (3.09651e+052) class: Pos. norm. non-zero
; hwf : + 1320292494202650 174 (3.09651e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011011 #b1010110000011010000011111111001000100011110110010011)))
(assert (= r (fp #b0 #b10010101101 #b0100101100001100110010001101000111011101011100011010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
