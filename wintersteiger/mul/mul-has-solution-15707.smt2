(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2757074267888015572935955788125284016132354736328125p-952 {+ 1241675864549325 -952 (3.35116e-287)}
; Y = 1.8406531957498943885553899235674180090427398681640625p360 {+ 3785965419127041 360 (4.32285e+108)}
; 1.2757074267888015572935955788125284016132354736328125p-952 * 1.8406531957498943885553899235674180090427398681640625p360 == 1.174067475980340891084097165730781853199005126953125p-591
; [HW: 1.174067475980340891084097165730781853199005126953125p-591] 

; mpf : + 783930219962386 -591
; mpfd: + 783930219962386 -591 (1.44866e-178) class: Pos. norm. non-zero
; hwf : + 783930219962386 -591 (1.44866e-178) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000111 #b0100011010010100110000110000110101010010011111001101)))
(assert (= y (fp #b0 #b10101100111 #b1101011100110101000011000011111100000110000100000001)))
(assert (= r (fp #b0 #b00110110000 #b0010110010001111101011111010010010100010000000010010)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
