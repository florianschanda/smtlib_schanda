(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2497403401857269944486006352235563099384307861328125 542 {- 1124730502999821 542 (-1.79919e+163)}
; -1.2497403401857269944486006352235563099384307861328125 542 I == -1.2497403401857269944486006352235563099384307861328125 542
; [HW: -1.2497403401857269944486006352235563099384307861328125 542] 

; mpf : - 1124730502999821 542
; mpfd: - 1124730502999821 542 (-1.79919e+163) class: Neg. norm. non-zero
; hwf : - 1124730502999821 542 (-1.79919e+163) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011101 #b0011111111101110111110111010000110010110111100001101)))
(assert (= r (fp #b1 #b11000011101 #b0011111111101110111110111010000110010110111100001101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
