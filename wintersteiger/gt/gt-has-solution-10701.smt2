(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9905912264002447731314759948872961103916168212890625p997 {- 4461226278092625 997 (-2.66617e+300)}
; Y = -1.7072572582072351732307424754253588616847991943359375p-841 {- 3185203524517183 -841 (-1.16432e-253)}
; -1.9905912264002447731314759948872961103916168212890625p997 > -1.7072572582072351732307424754253588616847991943359375p-841 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100100 #b1111110110010111011000101111100100010111111101010001)))
(assert (= y (fp #b1 #b00010110110 #b1011010100001110110011111100100111011011110100111111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
