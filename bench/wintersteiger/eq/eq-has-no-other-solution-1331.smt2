(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8084420693009228831016343974624760448932647705078125p-5 {- 3640899402054269 -5 (-0.0565138)}
; Y = 1.0249164130853862797465581024880520999431610107421875p815 {+ 112213548686755 815 (2.23942e+245)}
; -1.8084420693009228831016343974624760448932647705078125p-5 = 1.0249164130853862797465581024880520999431610107421875p815 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111010 #b1100111011110110000011110011100001011011101001111101)))
(assert (= y (fp #b0 #b11100101110 #b0000011001100000111011000000101101010101110110100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
