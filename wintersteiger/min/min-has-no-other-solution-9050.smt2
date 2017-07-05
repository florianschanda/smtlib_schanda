(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.761499519571315008903411580831743776798248291015625p-360 {- 3429488952584186 -360 (-7.50039e-109)}
; Y = -1.4766013288781660861559430486522614955902099609375p403 {- 2146421567139992 403 (-3.05036e+121)}
; -1.761499519571315008903411580831743776798248291015625p-360 m -1.4766013288781660861559430486522614955902099609375p403 == -1.4766013288781660861559430486522614955902099609375p403
; [HW: -1.4766013288781660861559430486522614955902099609375p403] 

; mpf : - 2146421567139992 403
; mpfd: - 2146421567139992 403 (-3.05036e+121) class: Neg. norm. non-zero
; hwf : - 2146421567139992 403 (-3.05036e+121) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010010111 #b1100001011110001101000011110110001111010011111111010)))
(assert (= y (fp #b1 #b10110010010 #b0111101000000010100010110111000011000011000010011000)))
(assert (= r (fp #b1 #b10110010010 #b0111101000000010100010110111000011000011000010011000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
