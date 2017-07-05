(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.214142966978221327423170805559493601322174072265625p-608 {+ 964414186287130 -608 (1.14296e-183)}
; Y = 1.4321324642054256148782087620929814875125885009765625p-816 {+ 1946151604770249 -816 (3.27723e-246)}
; 1.214142966978221327423170805559493601322174072265625p-608 = 1.4321324642054256148782087620929814875125885009765625p-816 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011111 #b0011011011010010000100101100111111010111000000011010)))
(assert (= y (fp #b0 #b00011001111 #b0110111010100000001110111011000101001101010111001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
