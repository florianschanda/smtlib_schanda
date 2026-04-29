(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8962941857661201883189505679183639585971832275390625p-570 {- 4036550161030641 -570 (-4.90691e-172)}
; Y = 1.6464405434995634802675112950964830815792083740234375p-113 {+ 2911309390821815 -113 (1.58546e-034)}
; -1.8962941857661201883189505679183639585971832275390625p-570 = 1.6464405434995634802675112950964830815792083740234375p-113 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000101 #b1110010101110011100010010010011101110101110111110001)))
(assert (= y (fp #b0 #b01110001110 #b1010010101111101001000001010000100100011100110110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
