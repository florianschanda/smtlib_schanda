(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.95720321490629611815847965772263705730438232421875p990 {- 4310860041969836 990 (-2.04801e+298)}
; Y = 1.2202702911114229333833236523787491023540496826171875p-140 {+ 992009200970195 -140 (8.75501e-043)}
; -1.95720321490629611815847965772263705730438232421875p990 = 1.2202702911114229333833236523787491023540496826171875p-140 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011101 #b1111010100001011010001010001011110100110000010101100)))
(assert (= y (fp #b0 #b01101110011 #b0011100001100011101000100100000010011010100111010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
