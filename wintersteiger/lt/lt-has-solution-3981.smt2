(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8856792323734321570327665540389716625213623046875p-505 {- 3988744660886776 -505 (-1.8002e-152)}
; Y = -1.5765835710772935218670909307547844946384429931640625p761 {- 2596701555851649 761 (-1.91225e+229)}
; -1.8856792323734321570327665540389716625213623046875p-505 < -1.5765835710772935218670909307547844946384429931640625p761 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000110 #b1110001010111011110111111100100111001010010011111000)))
(assert (= y (fp #b1 #b11011111000 #b1001001110011010111110110001110100110000000110000001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
