(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5281511695511944548542260235990397632122039794921875p-125 {- 2378581410386051 -125 (-3.59267e-038)}
; Y = 1.510651130402822506226812038221396505832672119140625p-189 {+ 2299768240598474 -189 (1.92528e-057)}
; -1.5281511695511944548542260235990397632122039794921875p-125 > 1.510651130402822506226812038221396505832672119140625p-189 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000010 #b1000011100110100111010100100000010010001000010000011)))
(assert (= y (fp #b0 #b01101000010 #b1000001010111010000010000101000010111110110111001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
