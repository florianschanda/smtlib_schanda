(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9898998465305088867438598754233680665493011474609375p772 {- 4458112579968911 772 (-4.94297e+232)}
; Y = 1.84850979526879211078949083457700908184051513671875p-356 {+ 3821348397792748 -356 (1.25934e-107)}
; -1.9898998465305088867438598754233680665493011474609375p772 > 1.84850979526879211078949083457700908184051513671875p-356 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000011 #b1111110101101010000100111000101100101001111110001111)))
(assert (= y (fp #b0 #b01010011011 #b1101100100110111111100000001110100000011110111101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
