(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5778228889445549132375390399829484522342681884765625p271 {+ 2602282947336841 271 (5.98669e+081)}
; Y = -1.8789222667581622072674463197472505271434783935546875p-23 {- 3958313993059691 -23 (-2.23985e-007)}
; 1.5778228889445549132375390399829484522342681884765625p271 * -1.8789222667581622072674463197472505271434783935546875p-23 == -1.482303279519307626088675533537752926349639892578125p249
; [HW: -1.482303279519307626088675533537752926349639892578125p249] 

; mpf : - 2172100869922722 249
; mpfd: - 2172100869922722 249 (-1.34093e+075) class: Neg. norm. non-zero
; hwf : - 2172100869922722 249 (-1.34093e+075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001110 #b1001001111101100001100110110101011100101101010001001)))
(assert (= y (fp #b1 #b01111101000 #b1110000100000001000011001011011101110011110101101011)))
(assert (= r (fp #b1 #b10011111000 #b0111101101111000001110100100110001001001111110100010)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
