(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5265136463831574520355616186861880123615264892578125p-109 {- 2371206661656669 -109 (-2.35197e-033)}
; Y = 1.5623220107947159984718155101290903985500335693359375p-608 {+ 2532473198277311 -608 (1.47073e-183)}
; -1.5265136463831574520355616186861880123615264892578125p-109 + 1.5623220107947159984718155101290903985500335693359375p-608 == -1.52651364638315722999095669365487992763519287109375p-109
; [HW: -1.52651364638315722999095669365487992763519287109375p-109] 

; mpf : - 2371206661656668 -109
; mpfd: - 2371206661656668 -109 (-2.35197e-033) class: Neg. norm. non-zero
; hwf : - 2371206661656668 -109 (-2.35197e-033) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110010010 #b1000011011001001100110010010110000011101000001011101)))
(assert (= y (fp #b0 #b00110011111 #b1000111111110100010101011101011000101111001010111111)))
(assert (= r (fp #b1 #b01110010010 #b1000011011001001100110010010110000011101000001011100)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
