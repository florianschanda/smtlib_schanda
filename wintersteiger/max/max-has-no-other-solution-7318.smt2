(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1947381014050291181405327733955346047878265380859375p-585 {- 877022440922527 -585 (-9.43464e-177)}
; Y = -1.596272194094911167638883853214792907238006591796875p564 {- 2685371231137230 564 (-9.63883e+169)}
; -1.1947381014050291181405327733955346047878265380859375p-585 M -1.596272194094911167638883853214792907238006591796875p564 == -1.1947381014050291181405327733955346047878265380859375p-585
; [HW: -1.1947381014050291181405327733955346047878265380859375p-585] 

; mpf : - 877022440922527 -585
; mpfd: - 877022440922527 -585 (-9.43464e-177) class: Neg. norm. non-zero
; hwf : - 877022440922527 -585 (-9.43464e-177) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110110 #b0011000111011010010110110011000011010001110110011111)))
(assert (= y (fp #b1 #b11000110011 #b1001100010100101010010110110010100100110110111001110)))
(assert (= r (fp #b1 #b00110110110 #b0011000111011010010110110011000011010001110110011111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
