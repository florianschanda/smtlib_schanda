(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5685832505166430461684967667679302394390106201171875p751 {+ 2560671315155859 751 (1.85795e+226)}
; 1.5685832505166430461684967667679302394390106201171875p751 | == 1.5685832505166430461684967667679302394390106201171875p751
; [HW: 1.5685832505166430461684967667679302394390106201171875p751] 

; mpf : + 2560671315155859 751
; mpfd: + 2560671315155859 751 (1.85795e+226) class: Pos. norm. non-zero
; hwf : + 2560671315155859 751 (1.85795e+226) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101110 #b1001000110001110101011000000001000000101101110010011)))
(assert (= r (fp #b0 #b11011101110 #b1001000110001110101011000000001000000101101110010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
