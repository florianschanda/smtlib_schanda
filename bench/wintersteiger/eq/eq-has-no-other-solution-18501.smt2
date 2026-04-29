(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7590849846690141955463104750378988683223724365234375p984 {+ 3418614854097911 984 (2.87609e+296)}
; Y = -1.5397753459600671543938688046182505786418914794921875p-790 {- 2430932046929539 -790 (-2.36462e-238)}
; 1.7590849846690141955463104750378988683223724365234375p984 = -1.5397753459600671543938688046182505786418914794921875p-790 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010111 #b1100001001010011011001001100000000001001101111110111)))
(assert (= y (fp #b1 #b00011101001 #b1000101000101110101101111001001000010101111010000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
