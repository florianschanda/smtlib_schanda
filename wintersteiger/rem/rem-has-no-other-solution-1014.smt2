(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9219497881780631676207349300966598093509674072265625p-116 {+ 4152092722493033 -116 (2.31346e-035)}
; Y = -1.240611393727298672473580154473893344402313232421875p-423 {- 1083617383131358 -423 (-5.72727e-128)}
; 1.9219497881780631676207349300966598093509674072265625p-116 % -1.240611393727298672473580154473893344402313232421875p-423 == 1.146974974519793022409430705010890960693359375p-429
; [HW: 1.146974974519793022409430705010890960693359375p-429] 

; mpf : + 661916440480128 -429
; mpfd: + 661916440480128 -429 (8.27343e-130) class: Pos. norm. non-zero
; hwf : + 661916440480128 -429 (8.27343e-130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001011 #b1110110000000100111001101011110011000111011001101001)))
(assert (= y (fp #b1 #b01001011000 #b0011110110011000101101010101001100011010100011011110)))
(assert (= r (fp #b0 #b01001010010 #x25a026e4e4980)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
