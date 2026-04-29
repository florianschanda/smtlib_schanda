(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.1942409750815368152387918598833493888378143310546875p-631 {+ 874783582997291 -631 (1.34018e-190)}
; +oo > 1.1942409750815368152387918598833493888378143310546875p-631 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00110001000 #b0011000110111001110001101100101110000100101100101011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
