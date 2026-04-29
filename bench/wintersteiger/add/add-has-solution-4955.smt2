(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2519311648552891025332201024866662919521331787109375p-455 {- 1134597100165295 -455 (-1.34565e-137)}
; Y = +zero {+ 0 -1023 (0)}
; -1.2519311648552891025332201024866662919521331787109375p-455 + +zero == -1.2519311648552891025332201024866662919521331787109375p-455
; [HW: -1.2519311648552891025332201024866662919521331787109375p-455] 

; mpf : - 1134597100165295 -455
; mpfd: - 1134597100165295 -455 (-1.34565e-137) class: Neg. norm. non-zero
; hwf : - 1134597100165295 -455 (-1.34565e-137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000111000 #b0100000001111110100011111001000111100101100010101111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01000111000 #b0100000001111110100011111001000111100101100010101111)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
