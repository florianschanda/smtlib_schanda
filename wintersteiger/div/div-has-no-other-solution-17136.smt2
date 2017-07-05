(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2888516867364874229906490654684603214263916015625p-660 {+ 1300872348751784 -660 (2.69405e-199)}
; Y = -1.070240932336078198972018071799539029598236083984375p475 {- 316337036694918 475 (-1.04407e+143)}
; 1.2888516867364874229906490654684603214263916015625p-660 / -1.070240932336078198972018071799539029598236083984375p475 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101101011 #b0100100111110010001011110010001111101101011110101000)))
(assert (= y (fp #b1 #b10111011010 #b0001000111111011010011110100101100111001010110000110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
