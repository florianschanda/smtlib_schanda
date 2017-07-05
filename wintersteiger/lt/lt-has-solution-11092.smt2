(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.00260319364192351798692470765672624111175537109375p-427 {- 11723741915740 -427 (-2.89282e-129)}
; Y = -1.0977681858952526017247919298824854195117950439453125p-916 {- 440308765566549 -916 (-1.98168e-276)}
; -1.00260319364192351798692470765672624111175537109375p-427 < -1.0977681858952526017247919298824854195117950439453125p-916 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010100 #b0000000010101010100110100101011110001110101001011100)))
(assert (= y (fp #b1 #b00001101011 #b0001100100000111010101011111100100000010011001010101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
