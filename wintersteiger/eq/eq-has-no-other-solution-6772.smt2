(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1456103799786341301825132177327759563922882080078125p575 {+ 655770853013053 575 (1.41672e+173)}
; Y = 1.6810517790970169738073991538840346038341522216796875p-64 {+ 3067184538561339 -64 (9.113e-020)}
; 1.1456103799786341301825132177327759563922882080078125p575 = 1.6810517790970169738073991538840346038341522216796875p-64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111110 #b0010010101000110101110001100101111110111011000111101)))
(assert (= y (fp #b0 #b01110111111 #b1010111001011001011010001100111000011010101100111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
