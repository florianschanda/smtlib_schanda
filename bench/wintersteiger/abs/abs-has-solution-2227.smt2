(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.803101074110234236513861105777323246002197265625p525 {+ 3616845698103696 525 (1.98047e+158)}
; 1.803101074110234236513861105777323246002197265625p525 | == 1.803101074110234236513861105777323246002197265625p525
; [HW: 1.803101074110234236513861105777323246002197265625p525] 

; mpf : + 3616845698103696 525
; mpfd: + 3616845698103696 525 (1.98047e+158) class: Pos. norm. non-zero
; hwf : + 3616845698103696 525 (1.98047e+158) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001100 #b1100110110011000000010000011000010101111100110010000)))
(assert (= r (fp #b0 #b11000001100 #b1100110110011000000010000011000010101111100110010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
