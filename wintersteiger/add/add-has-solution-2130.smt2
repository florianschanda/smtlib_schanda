(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.27513899702564881266653173952363431453704833984375p-451 {+ 1239115884479804 -451 (2.19295e-136)}
; Y = -zero {- 0 -1023 (-0)}
; 1.27513899702564881266653173952363431453704833984375p-451 + -zero == 1.27513899702564881266653173952363431453704833984375p-451
; [HW: 1.27513899702564881266653173952363431453704833984375p-451] 

; mpf : + 1239115884479804 -451
; mpfd: + 1239115884479804 -451 (2.19295e-136) class: Pos. norm. non-zero
; hwf : + 1239115884479804 -451 (2.19295e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000111100 #b0100011001101111100000100110001000010100010100111100)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01000111100 #b0100011001101111100000100110001000010100010100111100)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
