(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7122884106516134128384010182344354689121246337890625p438 {+ 3207861820790929 438 (1.21539e+132)}
; Y = 1.9482029133997020853286130659398622810840606689453125p-329 {+ 4270326287458517 -329 (1.78142e-099)}
; 1.7122884106516134128384010182344354689121246337890625p438 > 1.9482029133997020853286130659398622810840606689453125p-329 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110110101 #b1011011001011000100010001000010100010001100010010001)))
(assert (= y (fp #b0 #b01010110110 #b1111001010111101011011010001011100000110000011010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
