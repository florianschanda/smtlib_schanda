(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.620904447719236696201505765202455222606658935546875 273 {- 2796305039381038 273 (-2.46006e+082)}
; -1.620904447719236696201505765202455222606658935546875 273 I == -1.620904447719236696201505765202455222606658935546875 273
; [HW: -1.620904447719236696201505765202455222606658935546875 273] 

; mpf : - 2796305039381038 273
; mpfd: - 2796305039381038 273 (-2.46006e+082) class: Neg. norm. non-zero
; hwf : - 2796305039381038 273 (-2.46006e+082) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010000 #b1001111011110011100110000000100011100101001000101110)))
(assert (= r (fp #b1 #b10100010000 #b1001111011110011100110000000100011100101001000101110)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
