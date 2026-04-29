(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0095804249832383003848690350423566997051239013671875p469 {+ 43146398384563 469 (1.53889e+141)}
; Y = -1.1687438401994654224580472146044485270977020263671875p667 {- 759954695843379 667 (-7.15692e+200)}
; 1.0095804249832383003848690350423566997051239013671875p469 = -1.1687438401994654224580472146044485270977020263671875p667 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010100 #b0000001001110011110111001101101111111100000110110011)))
(assert (= y (fp #b1 #b11010011010 #b0010101100110010110010111101101100001110111000110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
