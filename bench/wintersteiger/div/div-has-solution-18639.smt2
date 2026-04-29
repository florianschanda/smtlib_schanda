(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7374165934153429358133280402398668229579925537109375p-895 {+ 3321029095322159 -895 (6.57745e-270)}
; Y = 1.3108971823722932459332923826877959072589874267578125p951 {+ 1400156434682397 951 (2.49514e+286)}
; 1.7374165934153429358133280402398668229579925537109375p-895 / 1.3108971823722932459332923826877959072589874267578125p951 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010000000 #b1011110011000111010101010111100000111111001000101111)))
(assert (= y (fp #b0 #b11110110110 #b0100111110010110111101010010111010110101001000011101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
