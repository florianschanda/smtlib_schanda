(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.091677461949886573933099498390220105648040771484375p-273 {- 412878583475782 -273 (-7.19292e-083)}
; Y = 1.74463301047792374021128125605173408985137939453125p-791 {+ 3353528948516148 -791 (1.33961e-238)}
; Z = -1.9548386004358169198980021974421106278896331787109375p-659 {- 4300210765121711 -659 (-8.17229e-199)}
; -1.091677461949886573933099498390220105648040771484375p-273 x 1.74463301047792374021128125605173408985137939453125p-791 -1.9548386004358169198980021974421106278896331787109375p-659 == -1.9548386004358169198980021974421106278896331787109375p-659
; [HW: -1.9548386004358169198980021974421106278896331787109375p-659] 

; mpf : - 4300210765121711 -659
; mpfd: - 4300210765121711 -659 (-8.17229e-199) class: Neg. norm. non-zero
; hwf : - 4300210765121711 -659 (-8.17229e-199) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101110 #b0001011101111000001011001001010011011010111001000110)))
(assert (= y (fp #b0 #b00011101000 #b1011111010100000010001001101101110000110010100110100)))
(assert (= z (fp #b1 #b00101101100 #b1111010001110000010011010111000111010100100010101111)))
(assert (= r (fp #b1 #b00101101100 #b1111010001110000010011010111000111010100100010101111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
