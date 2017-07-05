(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2774129833145710932740257703699171543121337890625p-344 {- 1249357008283240 -344 (-3.56462e-104)}
; Y = -1.67540132371154459889339705114252865314483642578125p-166 {- 3041737149792852 -166 (-1.79118e-050)}
; -1.2774129833145710932740257703699171543121337890625p-344 = -1.67540132371154459889339705114252865314483642578125p-166 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100111 #b0100011100000100100010011000101011010010011001101000)))
(assert (= y (fp #b1 #b01101011001 #b1010110011100111000110011110010100000100001001010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
