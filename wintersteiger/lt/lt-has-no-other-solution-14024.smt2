(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.01600915607830533105016002082265913486480712890625p-43 {- 72098829348772 -43 (-1.15507e-013)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.01600915607830533105016002082265913486480712890625p-43 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010100 #b0000010000011001001011010001000111001010111110100100)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
