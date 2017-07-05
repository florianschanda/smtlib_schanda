(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7034548545330323587876364399562589824199676513671875p207 {- 3168079020746931 207 (-3.5038e+062)}
; -1.7034548545330323587876364399562589824199676513671875p207 | == 1.7034548545330323587876364399562589824199676513671875p207
; [HW: 1.7034548545330323587876364399562589824199676513671875p207] 

; mpf : + 3168079020746931 207
; mpfd: + 3168079020746931 207 (3.5038e+062) class: Pos. norm. non-zero
; hwf : + 3168079020746931 207 (3.5038e+062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001110 #b1011010000010101100111100000101001101110100010110011)))
(assert (= r (fp #b0 #b10011001110 #b1011010000010101100111100000101001101110100010110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
