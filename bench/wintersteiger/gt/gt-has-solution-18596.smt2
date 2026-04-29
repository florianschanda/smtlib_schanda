(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.25866993251120096175554863293655216693878173828125p-874 {- 1164945811669396 -874 (-9.99299e-264)}
; +oo > -1.25866993251120096175554863293655216693878173828125p-874 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00010010101 #b0100001000111000001100010101010010011000000110010100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
