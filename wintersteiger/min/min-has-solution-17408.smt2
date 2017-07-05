(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0562216660009380309048765411716885864734649658203125p-265 {+ 253199874051973 -265 (1.78158e-080)}
; Y = -1.3225958231408638798853871776373125612735748291015625p637 {- 1452842428888473 637 (-7.54283e+191)}
; 1.0562216660009380309048765411716885864734649658203125p-265 m -1.3225958231408638798853871776373125612735748291015625p637 == -1.3225958231408638798853871776373125612735748291015625p637
; [HW: -1.3225958231408638798853871776373125612735748291015625p637] 

; mpf : - 1452842428888473 637
; mpfd: - 1452842428888473 637 (-7.54283e+191) class: Neg. norm. non-zero
; hwf : - 1452842428888473 637 (-7.54283e+191) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011110110 #b0000111001100100100010110000100011001100111110000101)))
(assert (= y (fp #b1 #b11001111100 #b0101001010010101101000111100111000110111010110011001)))
(assert (= r (fp #b1 #b11001111100 #b0101001010010101101000111100111000110111010110011001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
