(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.01184783381132081814257617224939167499542236328125p-500 {+ 53357899937812 -500 (3.09113e-151)}
; Y = 1.173796731256725234260329671087674796581268310546875p-911 {+ 782710894125998 -911 (6.78058e-275)}
; 1.01184783381132081814257617224939167499542236328125p-500 = 1.173796731256725234260329671087674796581268310546875p-911 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001011 #b0000001100001000011101011010101010111111100000010100)))
(assert (= y (fp #b0 #b00001110000 #b0010110001111101111100010100110011100110001110101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
