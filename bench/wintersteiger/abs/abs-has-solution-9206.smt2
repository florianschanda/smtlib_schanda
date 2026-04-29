(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2677344580886071856440366900642402470111846923828125p546 {+ 1205768805682093 546 (2.92016e+164)}
; 1.2677344580886071856440366900642402470111846923828125p546 | == 1.2677344580886071856440366900642402470111846923828125p546
; [HW: 1.2677344580886071856440366900642402470111846923828125p546] 

; mpf : + 1205768805682093 546
; mpfd: + 1205768805682093 546 (2.92016e+164) class: Pos. norm. non-zero
; hwf : + 1205768805682093 546 (2.92016e+164) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100001 #b0100010010001010001111101101010110000000101110101101)))
(assert (= r (fp #b0 #b11000100001 #b0100010010001010001111101101010110000000101110101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
