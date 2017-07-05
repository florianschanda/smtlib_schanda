(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4245885795319406241787874023430049419403076171875p539 {- 1912176968565816 539 (-2.56364e+162)}
; -1.4245885795319406241787874023430049419403076171875p539 | == 1.4245885795319406241787874023430049419403076171875p539
; [HW: 1.4245885795319406241787874023430049419403076171875p539] 

; mpf : + 1912176968565816 539
; mpfd: + 1912176968565816 539 (2.56364e+162) class: Pos. norm. non-zero
; hwf : + 1912176968565816 539 (2.56364e+162) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011010 #b0110110010110001110101100100111101011000010000111000)))
(assert (= r (fp #b0 #b11000011010 #b0110110010110001110101100100111101011000010000111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
