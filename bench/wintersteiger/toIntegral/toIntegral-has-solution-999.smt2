(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1598483403717667616916742190369404852390289306640625 177 {+ 719892926134081 177 (2.22183e+053)}
; 1.1598483403717667616916742190369404852390289306640625 177 I == 1.1598483403717667616916742190369404852390289306640625 177
; [HW: 1.1598483403717667616916742190369404852390289306640625 177] 

; mpf : + 719892926134081 177
; mpfd: + 719892926134081 177 (2.22183e+053) class: Pos. norm. non-zero
; hwf : + 719892926134081 177 (2.22183e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110000 #b0010100011101011110100100010001000110111011101000001)))
(assert (= r (fp #b0 #b10010110000 #b0010100011101011110100100010001000110111011101000001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
