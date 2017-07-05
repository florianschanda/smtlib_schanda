(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.47016423913765237330153468064963817596435546875 984 {- 2117431492183264 984 (-2.40371e+296)}
; -1.47016423913765237330153468064963817596435546875 984 I == -1.47016423913765237330153468064963817596435546875 984
; [HW: -1.47016423913765237330153468064963817596435546875 984] 

; mpf : - 2117431492183264 984
; mpfd: - 2117431492183264 984 (-2.40371e+296) class: Neg. norm. non-zero
; hwf : - 2117431492183264 984 (-2.40371e+296) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111010111 #b0111100001011100101011101111111011011000010011100000)))
(assert (= r (fp #b1 #b11111010111 #b0111100001011100101011101111111011011000010011100000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
