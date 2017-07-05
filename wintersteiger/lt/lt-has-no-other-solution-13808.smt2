(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3027970768490912956139027301105670630931854248046875p183 {+ 1363676802466443 183 (1.59722e+055)}
; Y = 1.0965486199880867257405725467833690345287322998046875p1008 {+ 434816329001483 1008 (3.0079e+303)}
; 1.3027970768490912956139027301105670630931854248046875p183 < 1.0965486199880867257405725467833690345287322998046875p1008 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110110 #b0100110110000100000110111111011001100100001010001011)))
(assert (= y (fp #b0 #b11111101111 #b0001100010110111011010010000110101010010101000001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
