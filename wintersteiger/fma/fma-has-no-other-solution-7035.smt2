(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.374871992391010433465226014959625899791717529296875p155 {- 1688273365243790 155 (-6.27931e+046)}
; Y = 1.434563453730252735596195634570904076099395751953125p679 {+ 1957099808288402 679 (3.59821e+204)}
; Z = -1.9252685485388234543080443472717888653278350830078125p-283 {- 4167039090417085 -283 (-1.2388e-085)}
; -1.374871992391010433465226014959625899791717529296875p155 x 1.434563453730252735596195634570904076099395751953125p679 -1.9252685485388234543080443472717888653278350830078125p-283 == -1.9723411138414415066932861009263433516025543212890625p834
; [HW: -1.9723411138414415066932861009263433516025543212890625p834] 

; mpf : - 4379035077973329 834
; mpfd: - 4379035077973329 834 (-2.25943e+251) class: Neg. norm. non-zero
; hwf : - 4379035077973329 834 (-2.25943e+251) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011010 #b0101111111110111100111000110001110000001011110001110)))
(assert (= y (fp #b0 #b11010100110 #b0110111100111111100011001110110111001110111010010010)))
(assert (= z (fp #b1 #b01011100100 #b1110110011011110011001100100101111111101110110111101)))
(assert (= r (fp #b1 #b11101000001 #b1111100011101011010110001110010010000001010101010001)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
