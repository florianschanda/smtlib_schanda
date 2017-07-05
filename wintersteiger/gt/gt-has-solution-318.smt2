(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0812013474553976433156776693067513406276702880859375p367 {- 365698358142111 367 (-3.25024e+110)}
; Y = -1.2794191774238525827200874118716455996036529541015625p71 {- 1258392103326233 71 (-3.02094e+021)}
; -1.0812013474553976433156776693067513406276702880859375p367 > -1.2794191774238525827200874118716455996036529541015625p71 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101110 #b0001010011001001100111001000101110110110010010011111)))
(assert (= y (fp #b1 #b10001000110 #b0100011110001000000000111110010011101001001000011001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
