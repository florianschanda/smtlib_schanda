(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5279253152402267890153098051086999475955963134765625p-881 {+ 2377564252995337 -881 (9.47711e-266)}
; Y = 1.0007628808599242642429771876777522265911102294921875p-124 {+ 3435709956483 -124 (4.70556e-038)}
; Z = -1.4568787246045318273246493845363147556781768798828125p203 {- 2057598853882477 203 (-1.87289e+061)}
; 1.5279253152402267890153098051086999475955963134765625p-881 x 1.0007628808599242642429771876777522265911102294921875p-124 -1.4568787246045318273246493845363147556781768798828125p203 == -1.4568787246045318273246493845363147556781768798828125p203
; [HW: -1.4568787246045318273246493845363147556781768798828125p203] 

; mpf : - 2057598853882477 203
; mpfd: - 2057598853882477 203 (-1.87289e+061) class: Neg. norm. non-zero
; hwf : - 2057598853882477 203 (-1.87289e+061) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001110 #b1000011100100110000111010000101110101111111100001001)))
(assert (= y (fp #b0 #b01110000011 #b0000000000110001111111110000010001011000000110000011)))
(assert (= z (fp #b1 #b10011001010 #b0111010011110110000000010000110001101010001001101101)))
(assert (= r (fp #b1 #b10011001010 #b0111010011110110000000010000110001101010001001101101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
