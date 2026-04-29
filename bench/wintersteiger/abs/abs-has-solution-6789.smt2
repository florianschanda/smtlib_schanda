(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.847911465007944453731170142418704926967620849609375p518 {+ 3818653757852950 518 (1.58569e+156)}
; 1.847911465007944453731170142418704926967620849609375p518 | == 1.847911465007944453731170142418704926967620849609375p518
; [HW: 1.847911465007944453731170142418704926967620849609375p518] 

; mpf : + 3818653757852950 518
; mpfd: + 3818653757852950 518 (1.58569e+156) class: Pos. norm. non-zero
; hwf : + 3818653757852950 518 (1.58569e+156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000101 #b1101100100010000101110011100110000011100110100010110)))
(assert (= r (fp #b0 #b11000000101 #b1101100100010000101110011100110000011100110100010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
