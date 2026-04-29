(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6032807699829003666991411591880023479461669921875 226 {+ 2716935050894776 226 (1.72897e+068)}
; 1.6032807699829003666991411591880023479461669921875 226 I == 1.6032807699829003666991411591880023479461669921875 226
; [HW: 1.6032807699829003666991411591880023479461669921875 226] 

; mpf : + 2716935050894776 226
; mpfd: + 2716935050894776 226 (1.72897e+068) class: Pos. norm. non-zero
; hwf : + 2716935050894776 226 (1.72897e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100001 #b1001101001110000100110111100100101100001110110111000)))
(assert (= r (fp #b0 #b10011100001 #b1001101001110000100110111100100101100001110110111000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
