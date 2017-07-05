(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2442218692077602337775488194893114268779754638671875 973 {+ 1099877519159795 973 (9.93307e+292)}
; 1.2442218692077602337775488194893114268779754638671875 973 I == 1.2442218692077602337775488194893114268779754638671875 973
; [HW: 1.2442218692077602337775488194893114268779754638671875 973] 

; mpf : + 1099877519159795 973
; mpfd: + 1099877519159795 973 (9.93307e+292) class: Pos. norm. non-zero
; hwf : + 1099877519159795 973 (9.93307e+292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001100 #b0011111010000101010100110000110100110111000111110011)))
(assert (= r (fp #b0 #b11111001100 #b0011111010000101010100110000110100110111000111110011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
