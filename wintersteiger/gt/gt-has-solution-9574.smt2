(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2289778721063606692354142069234512746334075927734375p583 {- 1031224659494295 583 (-3.89073e+175)}
; Y = -1.40933251008875704002321072039194405078887939453125p-428 {- 1843469739906356 -428 (-2.03318e-129)}
; -1.2289778721063606692354142069234512746334075927734375p583 > -1.40933251008875704002321072039194405078887939453125p-428 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000110 #b0011101010011110010010110011100000110100010110010111)))
(assert (= y (fp #b1 #b01001010011 #b0110100011001010000000111111000000000101010100110100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
