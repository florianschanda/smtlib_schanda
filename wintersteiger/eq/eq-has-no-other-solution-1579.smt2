(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7719416783625681066638435368076898157596588134765625p261 {- 3476516255025417 261 (-6.56566e+078)}
; Y = -1.254033787322627713223255341290496289730072021484375p-572 {- 1144066469925702 -572 (-8.11244e-173)}
; -1.7719416783625681066638435368076898157596588134765625p261 = -1.254033787322627713223255341290496289730072021484375p-572 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000100 #b1100010110011101111110000100011011111100100100001001)))
(assert (= y (fp #b1 #b00111000011 #b0100000100001000010110111011100010100001001101000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
