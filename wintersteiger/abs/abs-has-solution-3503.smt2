(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.89283841820513298870309881749562919139862060546875p-84 {- 4020986767530700 -84 (-9.78575e-026)}
; -1.89283841820513298870309881749562919139862060546875p-84 | == 1.89283841820513298870309881749562919139862060546875p-84
; [HW: 1.89283841820513298870309881749562919139862060546875p-84] 

; mpf : + 4020986767530700 -84
; mpfd: + 4020986767530700 -84 (9.78575e-026) class: Pos. norm. non-zero
; hwf : + 4020986767530700 -84 (9.78575e-026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110101011 #b1110010010010001000011101111111011001101101011001100)))
(assert (= r (fp #b0 #b01110101011 #b1110010010010001000011101111111011001101101011001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
