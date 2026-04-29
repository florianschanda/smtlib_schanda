(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0943255821942263761314961811876855790615081787109375 748 {+ 424804656821423 748 (1.62025e+225)}
; 1.0943255821942263761314961811876855790615081787109375 748 I == 1.0943255821942263761314961811876855790615081787109375 748
; [HW: 1.0943255821942263761314961811876855790615081787109375 748] 

; mpf : + 424804656821423 748
; mpfd: + 424804656821423 748 (1.62025e+225) class: Pos. norm. non-zero
; hwf : + 424804656821423 748 (1.62025e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101011 #b0001100000100101101110001010101010110011010010101111)))
(assert (= r (fp #b0 #b11011101011 #b0001100000100101101110001010101010110011010010101111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
