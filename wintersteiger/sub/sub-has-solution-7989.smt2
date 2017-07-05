(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.57660281936526391888264697627164423465728759765625p-995 {- 2596788242434180 -995 (-4.70844e-300)}
; Y = -1.02141514378953690567186640691943466663360595703125p789 {- 96445233590644 789 (-3.32559e+237)}
; -1.57660281936526391888264697627164423465728759765625p-995 - -1.02141514378953690567186640691943466663360595703125p789 == 1.0214151437895366836272614818881265819072723388671875p789
; [HW: 1.0214151437895366836272614818881265819072723388671875p789] 

; mpf : + 96445233590643 789
; mpfd: + 96445233590643 789 (3.32559e+237) class: Pos. norm. non-zero
; hwf : + 96445233590643 789 (3.32559e+237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000011100 #b1001001110011100001111100000101111110100100010000100)))
(assert (= y (fp #b1 #b11100010100 #b0000010101111011011101100111111000110111000101110100)))
(assert (= r (fp #b0 #b11100010100 #b0000010101111011011101100111111000110111000101110011)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
