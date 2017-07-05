(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9335931218702597789160790853202342987060546875p-880 {- 4204529635770560 -880 (-2.39866e-265)}
; Y = -zero {- 0 -1023 (-0)}
; -1.9335931218702597789160790853202342987060546875p-880 = -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001111 #b1110111011111111111101010111011000110100000011000000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
