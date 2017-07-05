(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -0.46597889758248900449189022765494883060455322265625p-1022 {- 2098582389515012 -1023 (-1.03684e-308)}
; +zero % -0.46597889758248900449189022765494883060455322265625p-1022 == +zero
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
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00000000000 #b0111011101001010011001001001110110111110001100000100)))
(assert (= r (_ +zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
