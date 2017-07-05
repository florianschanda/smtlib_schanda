(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7773765027629557788912961768801324069499969482421875p-958 {- 3500992528169827 -958 (-7.29531e-289)}
; Y = -1.934994885274095910432379241683520376682281494140625p481 {- 4210842616913738 481 (-1.20811e+145)}
; -1.7773765027629557788912961768801324069499969482421875p-958 > -1.934994885274095910432379241683520376682281494140625p481 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000001 #b1100011100000010001001011000000000001011101101100011)))
(assert (= y (fp #b1 #b10111100000 #b1110111101011011110100110010011000101101111101001010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
