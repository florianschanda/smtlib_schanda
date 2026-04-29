(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9797373819536747685532418472575955092906951904296875p-923 {- 4412344908287515 -923 (-2.79204e-278)}
; -1.9797373819536747685532418472575955092906951904296875p-923 | == 1.9797373819536747685532418472575955092906951904296875p-923
; [HW: 1.9797373819536747685532418472575955092906951904296875p-923] 

; mpf : + 4412344908287515 -923
; mpfd: + 4412344908287515 -923 (2.79204e-278) class: Pos. norm. non-zero
; hwf : + 4412344908287515 -923 (2.79204e-278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100100 #b1111101011010000000100011010111000101000111000011011)))
(assert (= r (fp #b0 #b00001100100 #b1111101011010000000100011010111000101000111000011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
