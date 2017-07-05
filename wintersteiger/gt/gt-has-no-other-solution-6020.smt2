(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.359217714544406430121625817264430224895477294921875p-60 {+ 1617772765367070 -60 (1.17893e-018)}
; Y = -1.025931511607637514060797911952249705791473388671875p887 {- 116785146013310 887 (-1.05858e+267)}
; 1.359217714544406430121625817264430224895477294921875p-60 > -1.025931511607637514060797911952249705791473388671875p887 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000011 #b0101101111110101101100010011000000011100101100011110)))
(assert (= y (fp #b1 #b11101110110 #b0000011010100011011100101001001001001010011001111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
