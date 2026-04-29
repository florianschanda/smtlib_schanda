(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1184139323621289374699472318752668797969818115234375p1007 {+ 533288941661559 1007 (1.53394e+303)}
; Y = 1.7680620702941258759466336414334364235401153564453125p-575 {+ 3459044053574037 -575 (1.42972e-173)}
; 1.1184139323621289374699472318752668797969818115234375p1007 = 1.7680620702941258759466336414334364235401153564453125p-575 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101110 #b0001111001010000011000000001111011100010110101110111)))
(assert (= y (fp #b0 #b00111000000 #b1100010010011111101101110100000100110110000110010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
