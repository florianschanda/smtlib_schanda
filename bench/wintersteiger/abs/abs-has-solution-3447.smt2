(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.39658910507849309823313888045959174633026123046875p-49 {+ 1786078545850700 -49 (2.48084e-015)}
; 1.39658910507849309823313888045959174633026123046875p-49 | == 1.39658910507849309823313888045959174633026123046875p-49
; [HW: 1.39658910507849309823313888045959174633026123046875p-49] 

; mpf : + 1786078545850700 -49
; mpfd: + 1786078545850700 -49 (2.48084e-015) class: Pos. norm. non-zero
; hwf : + 1786078545850700 -49 (2.48084e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001110 #b0110010110000110110111010001010001000011000101001100)))
(assert (= r (fp #b0 #b01111001110 #b0110010110000110110111010001010001000011000101001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
