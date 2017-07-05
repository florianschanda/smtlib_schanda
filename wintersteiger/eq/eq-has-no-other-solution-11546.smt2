(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6416165608738573222780132709885947406291961669921875p-516 {- 2889584104466243 -516 (-7.65233e-156)}
; Y = -1.7498758585395230991110793183906935155391693115234375p-272 {- 3377140637092727 -272 (-2.30594e-082)}
; -1.6416165608738573222780132709885947406291961669921875p-516 = -1.7498758585395230991110793183906935155391693115234375p-272 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111011 #b1010010001000000111110111010000110000110011101000011)))
(assert (= y (fp #b1 #b01011101111 #b1011111111110111110111010100000001111100101101110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
