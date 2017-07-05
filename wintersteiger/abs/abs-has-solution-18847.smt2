(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3658106874978572786716313203214667737483978271484375p183 {+ 1647464875903495 183 (1.67448e+055)}
; 1.3658106874978572786716313203214667737483978271484375p183 | == 1.3658106874978572786716313203214667737483978271484375p183
; [HW: 1.3658106874978572786716313203214667737483978271484375p183] 

; mpf : + 1647464875903495 183
; mpfd: + 1647464875903495 183 (1.67448e+055) class: Pos. norm. non-zero
; hwf : + 1647464875903495 183 (1.67448e+055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110110 #b0101110110100101110001001110101101010100101000000111)))
(assert (= r (fp #b0 #b10010110110 #b0101110110100101110001001110101101010100101000000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
