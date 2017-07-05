(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.80615412515140238980393405654467642307281494140625p-649 {+ 3630595417635044 -649 (7.73192e-196)}
; Y = 1.4421259658620553256724861057591624557971954345703125p752 {+ 1991158335107173 752 (3.41633e+226)}
; 1.80615412515140238980393405654467642307281494140625p-649 M 1.4421259658620553256724861057591624557971954345703125p752 == 1.4421259658620553256724861057591624557971954345703125p752
; [HW: 1.4421259658620553256724861057591624557971954345703125p752] 

; mpf : + 1991158335107173 752
; mpfd: + 1991158335107173 752 (3.41633e+226) class: Pos. norm. non-zero
; hwf : + 1991158335107173 752 (3.41633e+226) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110110 #b1100111001100000000111011110001100001111100011100100)))
(assert (= y (fp #b0 #b11011101111 #b0111000100101111001010101101010000010111000001100101)))
(assert (= r (fp #b0 #b11011101111 #b0111000100101111001010101101010000010111000001100101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
