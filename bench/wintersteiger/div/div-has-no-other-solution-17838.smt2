(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.281011248459760221152237136266194283962249755859375p-468 {- 1265562153850294 -468 (-1.6808e-141)}
; Y = 1.303662713390032035221111073042266070842742919921875p824 {+ 1367575282869662 824 (1.45842e+248)}
; -1.281011248459760221152237136266194283962249755859375p-468 / 1.303662713390032035221111073042266070842742919921875p824 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101011 #b0100011111110000010110100110100111110001010110110110)))
(assert (= y (fp #b0 #b11100110111 #b0100110110111100110101101110111100000110010110011110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
