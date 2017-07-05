(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2741656520804547358949321278487332165241241455078125p117 {+ 1234732328547325 117 (2.11707e+035)}
; Y = 1.5464006826478016165538065251894295215606689453125p-66 {+ 2460769910767624 -66 (2.09576e-020)}
; 1.2741656520804547358949321278487332165241241455078125p117 = 1.5464006826478016165538065251894295215606689453125p-66 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001110100 #b0100011000101111101110000101110101011111001111111101)))
(assert (= y (fp #b0 #b01110111101 #b1000101111100000111010100100011001111100000000001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
