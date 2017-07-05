(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.994279740559045333014864809229038655757904052734375p-980 {+ 4477837869083750 -980 (1.9516e-295)}
; Y = -1.3061129927781969239930504045332781970500946044921875p-522 {- 1378610360209155 -522 (-9.51312e-158)}
; 1.994279740559045333014864809229038655757904052734375p-980 m -1.3061129927781969239930504045332781970500946044921875p-522 == -1.3061129927781969239930504045332781970500946044921875p-522
; [HW: -1.3061129927781969239930504045332781970500946044921875p-522] 

; mpf : - 1378610360209155 -522
; mpfd: - 1378610360209155 -522 (-9.51312e-158) class: Neg. norm. non-zero
; hwf : - 1378610360209155 -522 (-9.51312e-158) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101011 #b1111111010001001000111011111100011000110110001100110)))
(assert (= y (fp #b1 #b00111110101 #b0100111001011101011010111100110011011100111100000011)))
(assert (= r (fp #b1 #b00111110101 #b0100111001011101011010111100110011011100111100000011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
