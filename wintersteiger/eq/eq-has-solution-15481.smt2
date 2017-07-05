(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0276208251184579811621233602636493742465972900390625p-36 {- 124393137711153 -36 (-1.49539e-011)}
; Y = 1.7119215989710097058917881440720520913600921630859375p150 {+ 3206209847842847 150 (2.44334e+045)}
; -1.0276208251184579811621233602636493742465972900390625p-36 = 1.7119215989710097058917881440720520913600921630859375p150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011011 #b0000011100010010001010001000110010010010100000110001)))
(assert (= y (fp #b0 #b10010010101 #b1011011001000000011111100111000011100101100000011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
