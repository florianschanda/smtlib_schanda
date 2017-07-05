(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2223624961994807858189915350521914660930633544921875p121 {+ 1001431655025155 121 (3.2496e+036)}
; 1.2223624961994807858189915350521914660930633544921875p121 | == 1.2223624961994807858189915350521914660930633544921875p121
; [HW: 1.2223624961994807858189915350521914660930633544921875p121] 

; mpf : + 1001431655025155 121
; mpfd: + 1001431655025155 121 (3.2496e+036) class: Pos. norm. non-zero
; hwf : + 1001431655025155 121 (3.2496e+036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111000 #b0011100011101100101111111010000100001000101000000011)))
(assert (= r (fp #b0 #b10001111000 #b0011100011101100101111111010000100001000101000000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
