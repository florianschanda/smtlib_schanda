(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5529219592436376284894095078925602138042449951171875p-5 {- 2490139129614611 -5 (-0.0485288)}
; Y = 1.8172445715939635757507630842155776917934417724609375p-141 {+ 3680542348101135 -141 (6.51905e-043)}
; -1.5529219592436376284894095078925602138042449951171875p-5 = 1.8172445715939635757507630842155776917934417724609375p-141 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111010 #b1000110110001100010010110010010000110001000100010011)))
(assert (= y (fp #b0 #b01101110010 #b1101000100110110111100001011001111010100011000001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
