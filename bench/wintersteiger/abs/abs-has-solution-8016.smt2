(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1464906347926706597917245744611136615276336669921875p-904 {- 659735168265539 -904 (-8.47724e-273)}
; -1.1464906347926706597917245744611136615276336669921875p-904 | == 1.1464906347926706597917245744611136615276336669921875p-904
; [HW: 1.1464906347926706597917245744611136615276336669921875p-904] 

; mpf : + 659735168265539 -904
; mpfd: + 659735168265539 -904 (8.47724e-273) class: Pos. norm. non-zero
; hwf : + 659735168265539 -904 (8.47724e-273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110111 #b0010010110000000011010010000010110011010110101000011)))
(assert (= r (fp #b0 #b00001110111 #b0010010110000000011010010000010110011010110101000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
