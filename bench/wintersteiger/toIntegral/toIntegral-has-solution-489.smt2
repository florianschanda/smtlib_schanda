(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.64459956543219565361368950107134878635406494140625 495 {+ 2903018362683620 495 (1.68232e+149)}
; 1.64459956543219565361368950107134878635406494140625 495 I == 1.64459956543219565361368950107134878635406494140625 495
; [HW: 1.64459956543219565361368950107134878635406494140625 495] 

; mpf : + 2903018362683620 495
; mpfd: + 2903018362683620 495 (1.68232e+149) class: Pos. norm. non-zero
; hwf : + 2903018362683620 495 (1.68232e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101110 #b1010010100000100011110100010010010001100000011100100)))
(assert (= r (fp #b0 #b10111101110 #b1010010100000100011110100010010010001100000011100100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
