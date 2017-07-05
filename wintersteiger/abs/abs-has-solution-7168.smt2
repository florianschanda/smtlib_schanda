(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4481401830733549029872619939851574599742889404296875p-396 {- 2018243961498907 -396 (-8.97289e-120)}
; -1.4481401830733549029872619939851574599742889404296875p-396 | == 1.4481401830733549029872619939851574599742889404296875p-396
; [HW: 1.4481401830733549029872619939851574599742889404296875p-396] 

; mpf : + 2018243961498907 -396
; mpfd: + 2018243961498907 -396 (8.97289e-120) class: Pos. norm. non-zero
; hwf : + 2018243961498907 -396 (8.97289e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001110011 #b0111001010111001010100001010011001010010110100011011)))
(assert (= r (fp #b0 #b01001110011 #b0111001010111001010100001010011001010010110100011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
