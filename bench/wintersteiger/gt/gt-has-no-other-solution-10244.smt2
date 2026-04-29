(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5538357883857936148075395976775325834751129150390625p29 {- 2494254650198705 29 (-8.34209e+008)}
; Y = -1.538361045950915606539410873665474355220794677734375p-345 {- 2424562605935334 -345 (-2.1464e-104)}
; -1.5538357883857936148075395976775325834751129150390625p29 > -1.538361045950915606539410873665474355220794677734375p-345 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011100 #b1000110111001000001011101010011001111000101010110001)))
(assert (= y (fp #b1 #b01010100110 #b1000100111010010000001111000110111001100101011100110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
