(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.965373693779031594175421560066752135753631591796875p114 {+ 4347656607576526 114 (4.08192e+034)}
; 1.965373693779031594175421560066752135753631591796875p114 | == 1.965373693779031594175421560066752135753631591796875p114
; [HW: 1.965373693779031594175421560066752135753631591796875p114] 

; mpf : + 4347656607576526 114
; mpfd: + 4347656607576526 114 (4.08192e+034) class: Pos. norm. non-zero
; hwf : + 4347656607576526 114 (4.08192e+034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110001 #b1111011100100010101110101111101100110011000111001110)))
(assert (= r (fp #b0 #b10001110001 #b1111011100100010101110101111101100110011000111001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
