(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.1145662602540491459279792252345941960811614990234375p-737 {+ 515960566989367 -737 (1.5417e-222)}
; +oo > 1.1145662602540491459279792252345941960811614990234375p-737 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00100011110 #b0001110101010100001101101110010100000100001000110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
