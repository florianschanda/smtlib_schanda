(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9117117505368346197514028972364030778408050537109375p-352 {+ 4105984699986991 -352 (2.08384e-106)}
; Y = -1.2175755025106351769892398806405253708362579345703125p921 {- 979872952031845 921 (-2.15835e+277)}
; Z = -1.31317042309301168501178835867904126644134521484375p-696 {- 1410394200745148 -696 (-3.99433e-210)}
; 1.9117117505368346197514028972364030778408050537109375p-352 x -1.2175755025106351769892398806405253708362579345703125p921 -1.31317042309301168501178835867904126644134521484375p-696 == -1.163826697657686093378970326739363372325897216796875p570
; [HW: -1.163826697657686093378970326739363372325897216796875p570] 

; mpf : - 737809854524494 570
; mpfd: - 737809854524494 570 (-4.49765e+171) class: Neg. norm. non-zero
; hwf : - 737809854524494 570 (-4.49765e+171) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011111 #b1110100101100101111100001111011111101111010000101111)))
(assert (= y (fp #b1 #b11110011000 #b0011011110110011000001110011001110110001101001100101)))
(assert (= z (fp #b1 #b00101000111 #b0101000000101011111011111101010101000010010010111100)))
(assert (= r (fp #b1 #b11000111001 #b0010100111110000100010111110010010100110110001001110)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
