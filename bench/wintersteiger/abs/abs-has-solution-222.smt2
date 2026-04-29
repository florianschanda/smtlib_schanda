(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9317404189184299578840864342055283486843109130859375p-186 {- 4196185803447071 -186 (-1.96956e-056)}
; -1.9317404189184299578840864342055283486843109130859375p-186 | == 1.9317404189184299578840864342055283486843109130859375p-186
; [HW: 1.9317404189184299578840864342055283486843109130859375p-186] 

; mpf : + 4196185803447071 -186
; mpfd: + 4196185803447071 -186 (1.96956e-056) class: Pos. norm. non-zero
; hwf : + 4196185803447071 -186 (1.96956e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101000101 #b1110111010000110100010100100001110011101101100011111)))
(assert (= r (fp #b0 #b01101000101 #b1110111010000110100010100100001110011101101100011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
