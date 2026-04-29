(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7202396327930256081373272536438889801502227783203125p672 {+ 3243670941864133 672 (3.3709e+202)}
; Y = -zero {- 0 -1023 (-0)}
; 1.7202396327930256081373272536438889801502227783203125p672 - -zero == 1.7202396327930256081373272536438889801502227783203125p672
; [HW: 1.7202396327930256081373272536438889801502227783203125p672] 

; mpf : + 3243670941864133 672
; mpfd: + 3243670941864133 672 (3.3709e+202) class: Pos. norm. non-zero
; hwf : + 3243670941864133 672 (3.3709e+202) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011111 #b1011100001100001100111111110010000100001000011000101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11010011111 #b1011100001100001100111111110010000100001000011000101)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
