(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.79113475200459237868244599667377769947052001953125p174 {+ 3562954174327732 174 (4.28892e+052)}
; Y = 1.1584548372166050267395576156559400260448455810546875p-333 {+ 713617145843755 -333 (6.6205e-101)}
; 1.79113475200459237868244599667377769947052001953125p174 = 1.1584548372166050267395576156559400260448455810546875p-333 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101101 #b1100101010000111110011101001111010010110101110110100)))
(assert (= y (fp #b0 #b01010110010 #b0010100010010000011111110000011110111101000000101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
