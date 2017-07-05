(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0634549215890858331334811737178824841976165771484375p-376 {- 285775561223431 -376 (-6.90941e-114)}
; Y = 1.0262334433684172640965925893397070467472076416015625p990 {+ 118144925778649 990 (1.07385e+298)}
; -1.0634549215890858331334811737178824841976165771484375p-376 < 1.0262334433684172640965925893397070467472076416015625p990 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000111 #b0001000000111110100101001110110011111110110100000111)))
(assert (= y (fp #b0 #b11111011101 #b0000011010110111001111000010010101010100001011011001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
