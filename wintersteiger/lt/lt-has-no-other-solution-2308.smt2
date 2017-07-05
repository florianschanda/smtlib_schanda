(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.87325794836994230507798420148901641368865966796875p-454 {- 3932804170877196 -454 (-4.02698e-137)}
; Y = -1.0815353689353621735591559627209790050983428955078125p270 {- 367202657154813 270 (-2.05182e+081)}
; -1.87325794836994230507798420148901641368865966796875p-454 < -1.0815353689353621735591559627209790050983428955078125p270 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111001 #b1101111110001101110101010011100100111000100100001100)))
(assert (= y (fp #b1 #b10100001101 #b0001010011011111100000000111111100001011011011111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
