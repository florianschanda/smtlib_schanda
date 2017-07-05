(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9744874260353746375784567135269753634929656982421875p-44 {+ 4388701208770147 -44 (1.12237e-013)}
; Y = 1.0052892289968557992807518530753441154956817626953125p-254 {+ 23820569739317 -254 (3.47274e-077)}
; 1.9744874260353746375784567135269753634929656982421875p-44 = 1.0052892289968557992807518530753441154956817626953125p-254 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010011 #b1111100101111000000000100000100100101111011001100011)))
(assert (= y (fp #b0 #b01100000001 #b0000000101011010101000101000100110010000000000110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
