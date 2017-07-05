(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.083086756679227935507014990434981882572174072265625p564 {+ 374189486419994 564 (6.54005e+169)}
; Y = -1.65743028968735384154342682450078427791595458984375p408 {- 2960802807658044 408 (-1.09565e+123)}
; 1.083086756679227935507014990434981882572174072265625p564 < -1.65743028968735384154342682450078427791595458984375p408 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110011 #b0001010101000101001011000111011010101011000000011010)))
(assert (= y (fp #b1 #b10110010111 #b1010100001001101010110011111100110011011011000111100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
