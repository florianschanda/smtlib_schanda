(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9959633916799466302194332456565462052822113037109375p14 {+ 4485420359644463 14 (32701.9)}
; Y = -1.237785799104132333781080888002179563045501708984375p-161 {- 1070892036239366 -161 (-4.23464e-049)}
; 1.9959633916799466302194332456565462052822113037109375p14 = -1.237785799104132333781080888002179563045501708984375p-161 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001101 #b1111111011110111011101001111001101000111010100101111)))
(assert (= y (fp #b1 #b01101011110 #b0011110011011111100001111011011010011011000000000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
