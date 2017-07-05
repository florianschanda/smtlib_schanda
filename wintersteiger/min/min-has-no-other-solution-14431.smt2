(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.49085371232189078938290549558587372303009033203125p208 {+ 2210608595906292 208 (6.13302e+062)}
; Y = 1.649046678102619178929444387904368340969085693359375p-13 {+ 2923046377649014 -13 (0.0002013)}
; 1.49085371232189078938290549558587372303009033203125p208 m 1.649046678102619178929444387904368340969085693359375p-13 == 1.649046678102619178929444387904368340969085693359375p-13
; [HW: 1.649046678102619178929444387904368340969085693359375p-13] 

; mpf : + 2923046377649014 -13
; mpfd: + 2923046377649014 -13 (0.0002013) class: Pos. norm. non-zero
; hwf : + 2923046377649014 -13 (0.0002013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001111 #b0111110110101000100101101100000110001010111011110100)))
(assert (= y (fp #b0 #b01111110010 #b1010011000100111111011000101000000000111001101110110)))
(assert (= r (fp #b0 #b01111110010 #b1010011000100111111011000101000000000111001101110110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
