(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2150285929936612827617636867216788232326507568359375p-227 {- 968402691280255 -227 (-5.63349e-069)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.2150285929936612827617636867216788232326507568359375p-227 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011100 #b0011011100001100000111010010011010011100110101111111)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
