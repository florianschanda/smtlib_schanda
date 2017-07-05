(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3803172380220931625416369570302776992321014404296875p-291 {- 1712796571438875 -291 (-3.46937e-088)}
; Y = 1.099068585575427636769063610699959099292755126953125p-520 {+ 446165245081618 -520 (3.20204e-157)}
; -1.3803172380220931625416369570302776992321014404296875p-291 - 1.099068585575427636769063610699959099292755126953125p-520 == -1.3803172380220931625416369570302776992321014404296875p-291
; [HW: -1.3803172380220931625416369570302776992321014404296875p-291] 

; mpf : - 1712796571438875 -291
; mpfd: - 1712796571438875 -291 (-3.46937e-088) class: Neg. norm. non-zero
; hwf : - 1712796571438875 -291 (-3.46937e-088) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011011100 #b0110000101011100011110000111001101101000111100011011)))
(assert (= y (fp #b0 #b00111110111 #b0001100101011100100011110000111100011011100000010010)))
(assert (= r (fp #b1 #b01011011100 #b0110000101011100011110000111001101101000111100011011)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
