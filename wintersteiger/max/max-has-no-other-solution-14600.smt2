(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4974223039514129585114687870373018085956573486328125p-294 {- 2240190902721357 -294 (-4.70463e-089)}
; Y = -1.626734998282035604688644525595009326934814453125p-193 {- 2822563504723024 -193 (-1.29577e-058)}
; -1.4974223039514129585114687870373018085956573486328125p-294 M -1.626734998282035604688644525595009326934814453125p-193 == -1.4974223039514129585114687870373018085956573486328125p-294
; [HW: -1.4974223039514129585114687870373018085956573486328125p-294] 

; mpf : - 2240190902721357 -294
; mpfd: - 2240190902721357 -294 (-4.70463e-089) class: Neg. norm. non-zero
; hwf : - 2240190902721357 -294 (-4.70463e-089) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011011001 #b0111111101010111000100010110111111000101101101001101)))
(assert (= y (fp #b1 #b01100111110 #b1010000001110001101101000111000011100001010001010000)))
(assert (= r (fp #b1 #b01011011001 #b0111111101010111000100010110111111000101101101001101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
