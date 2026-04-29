(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.090626683339568359087934368290007114410400390625p178 {+ 408146297317904 178 (4.17845e+053)}
; Y = -1.6933153568145422607216232790960930287837982177734375p-245 {- 3122414782600215 -245 (-2.99495e-074)}
; 1.090626683339568359087934368290007114410400390625p178 > -1.6933153568145422607216232790960930287837982177734375p-245 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110001 #b0001011100110011010011110111000100010110101000010000)))
(assert (= y (fp #b1 #b01100001010 #b1011000101111101000111010111111101010101010000010111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
