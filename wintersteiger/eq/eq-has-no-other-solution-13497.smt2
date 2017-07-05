(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.345811892938379106254842554335482418537139892578125p985 {+ 1557398312177570 985 (4.40078e+296)}
; Y = -1.3564611527055567830046811650390736758708953857421875p-293 {- 1605358314496803 -293 (-8.52351e-089)}
; 1.345811892938379106254842554335482418537139892578125p985 = -1.3564611527055567830046811650390736758708953857421875p-293 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011000 #b0101100010000111001000001101001010111100111110100010)))
(assert (= y (fp #b1 #b01011011010 #b0101101101000001000010011100000100101010001100100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
