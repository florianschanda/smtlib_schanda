(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5116466890882620521807666591485030949115753173828125p375 {- 2304251838323245 375 (-1.16332e+113)}
; Y = 1.5521657322261557254705621744506061077117919921875p-627 {+ 2486733385900472 -627 (2.78696e-189)}
; -1.5116466890882620521807666591485030949115753173828125p375 % 1.5521657322261557254705621744506061077117919921875p-627 == -1.123911513793206751188336056657135486602783203125p-627
; [HW: -1.123911513793206751188336056657135486602783203125p-627] 

; mpf : - 558047847346000 -627
; mpfd: - 558047847346000 -627 (-2.01802e-189) class: Neg. norm. non-zero
; hwf : - 558047847346000 -627 (-2.01802e-189) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110110 #b1000001011111011010001110000010010111101101000101101)))
(assert (= y (fp #b0 #b00110001100 #b1000110101011010101110111100000111100010000110111000)))
(assert (= r (fp #b0 #b00110001010 #xb688461a2c9a0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
