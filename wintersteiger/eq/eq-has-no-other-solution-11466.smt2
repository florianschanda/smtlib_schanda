(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1486346855527822530262938016676343977451324462890625p843 {- 669391114469841 843 (-6.73703e+253)}
; Y = 1.4245302890600706202661740462644957005977630615234375p-5 {+ 1911914451618423 -5 (0.0445166)}
; -1.1486346855527822530262938016676343977451324462890625p843 = 1.4245302890600706202661740462644957005977630615234375p-5 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001010 #b0010011000001100111011000011100110000000000111010001)))
(assert (= y (fp #b0 #b01111111010 #b0110110010101110000001000101101110101100101001110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
