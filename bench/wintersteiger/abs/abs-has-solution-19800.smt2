(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.01041876544641961999104751157574355602264404296875p614 {+ 46921948182156 614 (6.8694e+184)}
; 1.01041876544641961999104751157574355602264404296875p614 | == 1.01041876544641961999104751157574355602264404296875p614
; [HW: 1.01041876544641961999104751157574355602264404296875p614] 

; mpf : + 46921948182156 614
; mpfd: + 46921948182156 614 (6.8694e+184) class: Pos. norm. non-zero
; hwf : + 46921948182156 614 (6.8694e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100101 #b0000001010101010110011011110000011011011011010001100)))
(assert (= r (fp #b0 #b11001100101 #b0000001010101010110011011110000011011011011010001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
