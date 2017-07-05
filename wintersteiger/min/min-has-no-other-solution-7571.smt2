(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.31013291095715533884913384099490940570831298828125p607 {+ 1396714462221972 607 (6.95861e+182)}
; Y = -1.199611851471405810087844656663946807384490966796875p-171 {- 898971859905358 -171 (-4.00785e-052)}
; 1.31013291095715533884913384099490940570831298828125p607 m -1.199611851471405810087844656663946807384490966796875p-171 == -1.199611851471405810087844656663946807384490966796875p-171
; [HW: -1.199611851471405810087844656663946807384490966796875p-171] 

; mpf : - 898971859905358 -171
; mpfd: - 898971859905358 -171 (-4.00785e-052) class: Neg. norm. non-zero
; hwf : - 898971859905358 -171 (-4.00785e-052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011110 #b0100111101100100110111101101010111111001011010010100)))
(assert (= y (fp #b1 #b01101010100 #b0011001100011001110000110010010111110110101101001110)))
(assert (= r (fp #b1 #b01101010100 #b0011001100011001110000110010010111110110101101001110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
