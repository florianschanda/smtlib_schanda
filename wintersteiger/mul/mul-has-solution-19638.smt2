(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5981330181621522523727207953925244510173797607421875p-553 {+ 2693751637713059 -553 (5.42032e-167)}
; Y = -1.4006474608961714256594177641090936958789825439453125p-656 {- 1804355755598933 -656 (-4.68438e-198)}
; 1.5981330181621522523727207953925244510173797607421875p-553 * -1.4006474608961714256594177641090936958789825439453125p-656 == -0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: -0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : - 1 -1023
; mpfd: - 1 -1023 (-4.94066e-324) class: Neg. denorm.
; hwf : - 1 -1023 (-4.94066e-324) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111010110 #b1001100100011111001111101101011110101010000010100011)))
(assert (= y (fp #b1 #b00101101111 #b0110011010010000110101001111110111000110010001010101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
