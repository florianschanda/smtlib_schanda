(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7964320779817217754725788836367428302764892578125p128 {+ 3586811209624392 128 (6.11294e+038)}
; 1.7964320779817217754725788836367428302764892578125p128 S == 1.340310440898571098244929089560173451900482177734375p64
; [HW: 1.340310440898571098244929089560173451900482177734375p64] 

; mpf : + 1532621974821094 64
; mpfd: + 1532621974821094 64 (2.47244e+019) class: Pos. norm. non-zero
; hwf : + 1532621974821094 64 (2.47244e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111111 #b1100101111100010111110010000000001101010101101001000)))
(assert (= r (fp #b0 #b10000111111 #b0101011100011110100101011100011000100101100011100110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
