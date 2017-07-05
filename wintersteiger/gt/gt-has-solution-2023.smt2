(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1628791398229816334009001366212032735347747802734375p210 {- 733542433413207 210 (-1.91352e+063)}
; Y = -1.9717191258731163738815439501195214688777923583984375p-625 {- 4376233893190951 -625 (-1.41611e-188)}
; -1.1628791398229816334009001366212032735347747802734375p210 > -1.9717191258731163738815439501195214688777923583984375p-625 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010001 #b0010100110110010011100101000001010111101100001010111)))
(assert (= y (fp #b1 #b00110001110 #b1111100011000010100101011010101010000101110100100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
