(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.579496530740251980517996344133280217647552490234375p-422 {+ 2609820359904294 -422 (1.45835e-127)}
; Y = 1.9988915037702053023593862235429696738719940185546875p302 {+ 4498607404163051 302 (1.62873e+091)}
; 1.579496530740251980517996344133280217647552490234375p-422 M 1.9988915037702053023593862235429696738719940185546875p302 == 1.9988915037702053023593862235429696738719940185546875p302
; [HW: 1.9988915037702053023593862235429696738719940185546875p302] 

; mpf : + 4498607404163051 302
; mpfd: + 4498607404163051 302 (1.62873e+091) class: Pos. norm. non-zero
; hwf : + 4498607404163051 302 (1.62873e+091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011001 #b1001010001011001111000100111011110101100110000100110)))
(assert (= y (fp #b0 #b10100101101 #b1111111110110111010110101000010011110001111111101011)))
(assert (= r (fp #b0 #b10100101101 #b1111111110110111010110101000010011110001111111101011)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
