(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.88815449753419795086983867804519832134246826171875p271 {+ 3999892264142444 271 (7.16418e+081)}
; Y = -1.048322797354047875018068225472234189510345458984375p3 {- 217626532157190 3 (-8.38658)}
; 1.88815449753419795086983867804519832134246826171875p271 > -1.048322797354047875018068225472234189510345458984375p3 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001110 #b1110001101011110000101111101100010110100011001101100)))
(assert (= y (fp #b1 #b10000000010 #b0000110001011110111000100000001001001001011100000110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
