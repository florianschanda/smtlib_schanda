(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6424094768640589148134267816203646361827850341796875p302 {- 2893155080624251 302 (-1.33826e+091)}
; -1.6424094768640589148134267816203646361827850341796875p302 | == 1.6424094768640589148134267816203646361827850341796875p302
; [HW: 1.6424094768640589148134267816203646361827850341796875p302] 

; mpf : + 2893155080624251 302
; mpfd: + 2893155080624251 302 (1.33826e+091) class: Pos. norm. non-zero
; hwf : + 2893155080624251 302 (1.33826e+091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100101101 #b1010010001110100111100101000110111000101100001111011)))
(assert (= r (fp #b0 #b10100101101 #b1010010001110100111100101000110111000101100001111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
