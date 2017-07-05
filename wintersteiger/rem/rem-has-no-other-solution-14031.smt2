(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.414809124507343085497268475592136383056640625p878 {- 1868134218561152 878 (-2.85124e+264)}
; Y = 1.6842737542895236391160551647772081196308135986328125p-821 {+ 3081695024837709 -821 (1.20444e-247)}
; -1.414809124507343085497268475592136383056640625p878 % 1.6842737542895236391160551647772081196308135986328125p-821 == -1.44525943938577938752132467925548553466796875p-826
; [HW: -1.44525943938577938752132467925548553466796875p-826] 

; mpf : - 2005270245300992 -826
; mpfd: - 2005270245300992 -826 (-3.22975e-249) class: Neg. norm. non-zero
; hwf : - 2005270245300992 -826 (-3.22975e-249) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101101 #b0110101000110000111011100100011111010111011010000000)))
(assert (= y (fp #b0 #b00011001010 #b1010111100101100100100001001010000101111010001001101)))
(assert (= r (fp #b1 #b00011000101 #x71fc85ca65b00)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
