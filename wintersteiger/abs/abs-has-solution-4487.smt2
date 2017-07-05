(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.621202145471217992422907627769745886325836181640625p-486 {- 2797645750865930 -486 (-8.11445e-147)}
; -1.621202145471217992422907627769745886325836181640625p-486 | == 1.621202145471217992422907627769745886325836181640625p-486
; [HW: 1.621202145471217992422907627769745886325836181640625p-486] 

; mpf : + 2797645750865930 -486
; mpfd: + 2797645750865930 -486 (8.11445e-147) class: Pos. norm. non-zero
; hwf : + 2797645750865930 -486 (8.11445e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011001 #b1001111100000111000110101001001100000001000000001010)))
(assert (= r (fp #b0 #b01000011001 #b1001111100000111000110101001001100000001000000001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
