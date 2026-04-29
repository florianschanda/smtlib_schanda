(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.320549781543608247602605842985212802886962890625p-337 {+ 1443627876713488 -337 (4.71679e-102)}
; 1.320549781543608247602605842985212802886962890625p-337 | == 1.320549781543608247602605842985212802886962890625p-337
; [HW: 1.320549781543608247602605842985212802886962890625p-337] 

; mpf : + 1443627876713488 -337
; mpfd: + 1443627876713488 -337 (4.71679e-102) class: Pos. norm. non-zero
; hwf : + 1443627876713488 -337 (4.71679e-102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101110 #b0101001000001111100011001110110001111000010000010000)))
(assert (= r (fp #b0 #b01010101110 #b0101001000001111100011001110110001111000010000010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
