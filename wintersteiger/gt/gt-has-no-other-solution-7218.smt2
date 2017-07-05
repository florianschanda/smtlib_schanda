(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.877712320253719813223369783372618257999420166015625p575 {- 3952864878433146 575 (-2.32208e+173)}
; Y = 1.9603124389418997708389724721200764179229736328125p-159 {+ 4324862742177992 -159 (2.6826e-048)}
; -1.877712320253719813223369783372618257999420166015625p575 > 1.9603124389418997708389724721200764179229736328125p-159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111110 #b1110000010110001110000010010111011001001001101111010)))
(assert (= y (fp #b0 #b01101100000 #b1111010111010111000010010011011100110010100011001000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
