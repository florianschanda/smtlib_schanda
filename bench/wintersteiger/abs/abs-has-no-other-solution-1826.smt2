(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3327307474669349840468157708528451621532440185546875p-209 {+ 1498486070306795 -209 (1.61984e-063)}
; 1.3327307474669349840468157708528451621532440185546875p-209 | == 1.3327307474669349840468157708528451621532440185546875p-209
; [HW: 1.3327307474669349840468157708528451621532440185546875p-209] 

; mpf : + 1498486070306795 -209
; mpfd: + 1498486070306795 -209 (1.61984e-063) class: Pos. norm. non-zero
; hwf : + 1498486070306795 -209 (1.61984e-063) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100101110 #b0101010100101101110101111001111010111110011111101011)))
(assert (= r (fp #b0 #b01100101110 #b0101010100101101110101111001111010111110011111101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
