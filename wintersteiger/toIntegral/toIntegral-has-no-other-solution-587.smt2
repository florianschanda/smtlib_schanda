(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1803225540522728209680280997417867183685302734375 633 {+ 812100587236312 633 (4.20715e+190)}
; 1.1803225540522728209680280997417867183685302734375 633 I == 1.1803225540522728209680280997417867183685302734375 633
; [HW: 1.1803225540522728209680280997417867183685302734375 633] 

; mpf : + 812100587236312 633
; mpfd: + 812100587236312 633 (4.20715e+190) class: Pos. norm. non-zero
; hwf : + 812100587236312 633 (4.20715e+190) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111000 #b0010111000101001100111100111000001100010101111011000)))
(assert (= r (fp #b0 #b11001111000 #b0010111000101001100111100111000001100010101111011000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
