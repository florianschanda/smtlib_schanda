(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.84778687399592111972879138193093240261077880859375p-786 {+ 3818092649817628 -786 (4.5402e-237)}
; Y = -1.1588987702623467779261545729241333901882171630859375p-984 {- 715616442543135 -984 (-7.0881e-297)}
; 1.84778687399592111972879138193093240261077880859375p-786 = -1.1588987702623467779261545729241333901882171630859375p-984 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101101 #b1101100100001000100011111000000111001010011000011100)))
(assert (= y (fp #b1 #b00000100111 #b0010100010101101100101101111110110100110110000011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
