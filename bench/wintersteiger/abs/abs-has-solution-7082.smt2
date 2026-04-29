(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.877475587514640498199014473357237875461578369140625p456 {- 3951798728957642 456 (-3.49343e+137)}
; -1.877475587514640498199014473357237875461578369140625p456 | == 1.877475587514640498199014473357237875461578369140625p456
; [HW: 1.877475587514640498199014473357237875461578369140625p456] 

; mpf : + 3951798728957642 456
; mpfd: + 3951798728957642 456 (3.49343e+137) class: Pos. norm. non-zero
; hwf : + 3951798728957642 456 (3.49343e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000111 #b1110000010100010001111010111011101101001111011001010)))
(assert (= r (fp #b0 #b10111000111 #b1110000010100010001111010111011101101001111011001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
