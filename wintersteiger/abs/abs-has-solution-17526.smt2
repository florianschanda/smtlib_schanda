(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.340715714463150742830066519672982394695281982421875p-882 {+ 1534447164695518 -882 (4.15796e-266)}
; 1.340715714463150742830066519672982394695281982421875p-882 | == 1.340715714463150742830066519672982394695281982421875p-882
; [HW: 1.340715714463150742830066519672982394695281982421875p-882] 

; mpf : + 1534447164695518 -882
; mpfd: + 1534447164695518 -882 (4.15796e-266) class: Pos. norm. non-zero
; hwf : + 1534447164695518 -882 (4.15796e-266) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001101 #b0101011100111001001001010010001011011010001111011110)))
(assert (= r (fp #b0 #b00010001101 #b0101011100111001001001010010001011011010001111011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
