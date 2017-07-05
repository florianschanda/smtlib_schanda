(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.788338557755391633463659672997891902923583984375p-923 {+ 3550361234948976 -923 (2.52211e-278)}
; -oo < 1.788338557755391633463659672997891902923583984375p-923 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b00001100100 #b1100100111010000100011100100001110111100001101110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
