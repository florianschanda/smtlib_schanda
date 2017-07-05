(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1091474591336074606573447454138658940792083740234375p-983 {+ 491556456282551 -983 (1.35676e-296)}
; Y = -1.5253771251189844893048075391561724245548248291015625p769 {- 2366088224914841 769 (-4.73635e+231)}
; 1.1091474591336074606573447454138658940792083740234375p-983 / -1.5253771251189844893048075391561724245548248291015625p769 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101000 #b0001101111110001000101100111111101101011100110110111)))
(assert (= y (fp #b1 #b11100000000 #b1000011001111111000111011000001001110011110110011001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
