(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9745527810367946575098585526575334370136260986328125p85 {+ 4388995541530189 85 (7.63868e+025)}
; Y = -1.96197159791724828892256482504308223724365234375p-270 {- 4332334929921120 -270 (-1.03417e-081)}
; 1.9745527810367946575098585526575334370136260986328125p85 m -1.96197159791724828892256482504308223724365234375p-270 == -1.96197159791724828892256482504308223724365234375p-270
; [HW: -1.96197159791724828892256482504308223724365234375p-270] 

; mpf : - 4332334929921120 -270
; mpfd: - 4332334929921120 -270 (-1.03417e-081) class: Neg. norm. non-zero
; hwf : - 4332334929921120 -270 (-1.03417e-081) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010100 #b1111100101111100010010101000001011000111011001001101)))
(assert (= y (fp #b1 #b01011110001 #b1111011001000011110001010100100010111100010001100000)))
(assert (= r (fp #b1 #b01011110001 #b1111011001000011110001010100100010111100010001100000)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
