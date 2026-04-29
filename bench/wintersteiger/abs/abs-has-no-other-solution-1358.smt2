(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4079752068532689346369579652673564851284027099609375p-402 {- 1837356989560783 -402 (-1.36313e-121)}
; -1.4079752068532689346369579652673564851284027099609375p-402 | == 1.4079752068532689346369579652673564851284027099609375p-402
; [HW: 1.4079752068532689346369579652673564851284027099609375p-402] 

; mpf : + 1837356989560783 -402
; mpfd: + 1837356989560783 -402 (1.36313e-121) class: Pos. norm. non-zero
; hwf : + 1837356989560783 -402 (1.36313e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001101101 #b0110100001110001000100000010101100000011011111001111)))
(assert (= r (fp #b0 #b01001101101 #b0110100001110001000100000010101100000011011111001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
