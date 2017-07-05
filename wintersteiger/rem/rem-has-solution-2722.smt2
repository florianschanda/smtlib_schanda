(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.17859456001413231973629081039689481258392333984375p-32 {- 804318393930044 -32 (-2.74413e-010)}
; Y = -1.4442068818323490209110104842693544924259185791015625p-535 {- 2000529947495577 -535 (-1.28405e-161)}
; -1.17859456001413231973629081039689481258392333984375p-32 % -1.4442068818323490209110104842693544924259185791015625p-535 == -1.266086674031889902636294209514744579792022705078125p-536
; [HW: -1.266086674031889902636294209514744579792022705078125p-536] 

; mpf : - 1198347846018274 -536
; mpfd: - 1198347846018274 -536 (-5.62841e-162) class: Neg. norm. non-zero
; hwf : - 1198347846018274 -536 (-5.62841e-162) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011111 #b0010110110111000010111111000001010000001000100111100)))
(assert (= y (fp #b1 #b00111101000 #b0111000110110111100010101100111000100000110010011001)))
(assert (= r (fp #b1 #b00111100111 #x441e419ade4e2)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
