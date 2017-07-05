(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5361024611723250732353562852949835360050201416015625p554 {- 2414390844368089 554 (-9.05811e+166)}
; Y = -1.1984559843083528729579256832948885858058929443359375p-560 {- 893766296980543 -560 (-3.17559e-169)}
; -1.5361024611723250732353562852949835360050201416015625p554 * -1.1984559843083528729579256832948885858058929443359375p-560 == 1.8409511871027623985952459406689740717411041259765625p-6
; [HW: 1.8409511871027623985952459406689740717411041259765625p-6] 

; mpf : + 3787307452872777 -6
; mpfd: + 3787307452872777 -6 (0.0287649) class: Pos. norm. non-zero
; hwf : + 3787307452872777 -6 (0.0287649) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101001 #b1000100100111110000000101100101000001010010011011001)))
(assert (= y (fp #b1 #b00111001111 #b0011001011001110000000101110101001001100110000111111)))
(assert (= r (fp #b0 #b01111111001 #b1101011101001000100100111011011000100011100001001001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
