(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1485533993317467160721889740671031177043914794921875p-913 {- 669025033875075 -913 (-1.65869e-275)}
; -1.1485533993317467160721889740671031177043914794921875p-913 | == 1.1485533993317467160721889740671031177043914794921875p-913
; [HW: 1.1485533993317467160721889740671031177043914794921875p-913] 

; mpf : + 669025033875075 -913
; mpfd: + 669025033875075 -913 (1.65869e-275) class: Pos. norm. non-zero
; hwf : + 669025033875075 -913 (1.65869e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101110 #b0010011000000111100110000111011111010110111010000011)))
(assert (= r (fp #b0 #b00001101110 #b0010011000000111100110000111011111010110111010000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
