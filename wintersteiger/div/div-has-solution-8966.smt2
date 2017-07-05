(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1738691091949906564195771352387964725494384765625p-113 {+ 783036855381800 -113 (1.13039e-034)}
; Y = 1.3016709732055338211154094096855260431766510009765625p-318 {+ 1358605282516937 -318 (2.4376e-096)}
; 1.1738691091949906564195771352387964725494384765625p-113 / 1.3016709732055338211154094096855260431766510009765625p-318 == 1.803634149272278275333292185678146779537200927734375p204
; [HW: 1.803634149272278275333292185678146779537200927734375p204] 

; mpf : + 3619246455204838 204
; mpfd: + 3619246455204838 204 (4.63733e+061) class: Pos. norm. non-zero
; hwf : + 3619246455204838 204 (4.63733e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001110 #b0010110010000010101011111001100111000110111100101000)))
(assert (= y (fp #b0 #b01011000001 #b0100110100111010010011110001010000010001111111001001)))
(assert (= r (fp #b0 #b10011001011 #b1100110110111010111101111011010100010010101111100110)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
