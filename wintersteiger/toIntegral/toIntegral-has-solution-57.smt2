(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6399106394586178137018350753351114690303802490234375 288 {+ 2881901317416247 288 (8.15566e+086)}
; 1.6399106394586178137018350753351114690303802490234375 288 I == 1.6399106394586178137018350753351114690303802490234375 288
; [HW: 1.6399106394586178137018350753351114690303802490234375 288] 

; mpf : + 2881901317416247 288
; mpfd: + 2881901317416247 288 (8.15566e+086) class: Pos. norm. non-zero
; hwf : + 2881901317416247 288 (8.15566e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011111 #b1010001111010001001011110000010011010110010100110111)))
(assert (= r (fp #b0 #b10100011111 #b1010001111010001001011110000010011010110010100110111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
