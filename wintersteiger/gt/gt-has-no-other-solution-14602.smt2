(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7056098902176317633205826496123336255550384521484375p-140 {- 3177784438653063 -140 (-1.22372e-042)}
; Y = -1.23294159381948897902248063473962247371673583984375p363 {- 1049075675124540 363 (-2.31649e+109)}
; -1.7056098902176317633205826496123336255550384521484375p-140 > -1.23294159381948897902248063473962247371673583984375p363 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110011 #b1011010010100010110110011000101000111000000010000111)))
(assert (= y (fp #b1 #b10101101010 #b0011101110100010000011110110111101010101001100111100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
