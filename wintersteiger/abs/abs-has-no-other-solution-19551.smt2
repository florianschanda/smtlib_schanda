(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3819137260679585921252510161139070987701416015625p-394 {- 1719986514407336 -394 (-3.42502e-119)}
; -1.3819137260679585921252510161139070987701416015625p-394 | == 1.3819137260679585921252510161139070987701416015625p-394
; [HW: 1.3819137260679585921252510161139070987701416015625p-394] 

; mpf : + 1719986514407336 -394
; mpfd: + 1719986514407336 -394 (3.42502e-119) class: Pos. norm. non-zero
; hwf : + 1719986514407336 -394 (3.42502e-119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001110101 #b0110000111000101000110010001001101011010111110101000)))
(assert (= r (fp #b0 #b01001110101 #b0110000111000101000110010001001101011010111110101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
