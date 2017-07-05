(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.288113110883447376409094431437551975250244140625p878 {- 1297546098815248 878 (-2.59591e+264)}
; Y = 1.5774977184965168763852716438123025000095367431640625p493 {+ 2600818509828225 493 (4.03419e+148)}
; -1.288113110883447376409094431437551975250244140625p878 > 1.5774977184965168763852716438123025000095367431640625p493 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101101 #b0100100111000001110001111110010011001011000100010000)))
(assert (= y (fp #b0 #b10111101100 #b1001001111010110111000111111011001110101000010000001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
