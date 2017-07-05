(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6288531070181557769416258452110923826694488525390625p291 {- 2832102618437745 291 (-6.48053e+087)}
; Y = -1.9773463045389305658972034507314674556255340576171875p-1005 {- 4401576452933459 -1005 (-5.76683e-303)}
; -1.6288531070181557769416258452110923826694488525390625p291 > -1.9773463045389305658972034507314674556255340576171875p-1005 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100100010 #b1010000011111100100001000110100010100001100001110001)))
(assert (= y (fp #b1 #b00000010010 #b1111101000110011010111100000111011011100011101010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
