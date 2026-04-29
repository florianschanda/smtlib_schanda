(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1068456297547177857865108308033086359500885009765625p304 {+ 481189938349513 304 (3.60749e+091)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.1068456297547177857865108308033086359500885009765625p304 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100101111 #b0001101101011010001111000011010110000100010111001001)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
