(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.483732424000409277908829608350060880184173583984375p-84 {- 2178537164475270 -84 (-7.67072e-026)}
; Y = 1.2917250962021420424008510963176377117633819580078125p552 {+ 1313813034550589 552 (1.90427e+166)}
; -1.483732424000409277908829608350060880184173583984375p-84 > 1.2917250962021420424008510963176377117633819580078125p552 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101011 #b0111101111010101111000110101110100011000101110000110)))
(assert (= y (fp #b0 #b11000100111 #b0100101010101110011111101111001110011100010100111101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
