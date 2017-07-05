(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.35275442726536798687675400287844240665435791015625p-300 {- 1588664707185604 -300 (-6.6408e-091)}
; -1.35275442726536798687675400287844240665435791015625p-300 | == 1.35275442726536798687675400287844240665435791015625p-300
; [HW: 1.35275442726536798687675400287844240665435791015625p-300] 

; mpf : + 1588664707185604 -300
; mpfd: + 1588664707185604 -300 (6.6408e-091) class: Pos. norm. non-zero
; hwf : + 1588664707185604 -300 (6.6408e-091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011010011 #b0101101001001110000111010011100010011111101111000100)))
(assert (= r (fp #b0 #b01011010011 #b0101101001001110000111010011100010011111101111000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
