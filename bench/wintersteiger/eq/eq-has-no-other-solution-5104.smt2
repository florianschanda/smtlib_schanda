(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8454851557450278054517411874257959425449371337890625p-191 {+ 3807726632360593 -191 (5.88005e-058)}
; Y = -1.727866110316665260171475893002934753894805908203125p-734 {- 3278017543197746 -734 (-1.91202e-221)}
; 1.8454851557450278054517411874257959425449371337890625p-191 = -1.727866110316665260171475893002934753894805908203125p-734 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000000 #b1101100001110001101101110001010100101101101010010001)))
(assert (= y (fp #b1 #b00100100001 #b1011101001010101011011101111001110101101010000110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
