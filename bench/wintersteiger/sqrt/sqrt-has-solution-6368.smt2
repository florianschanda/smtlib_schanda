(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.584100483748680954221299543860368430614471435546875p960 {+ 2630554720957486 960 (1.54376e+289)}
; 1.584100483748680954221299543860368430614471435546875p960 S == 1.258610536960771408843129393062554299831390380859375p480
; [HW: 1.258610536960771408843129393062554299831390380859375p480] 

; mpf : + 1164678317890614 480
; mpfd: + 1164678317890614 480 (3.92907e+144) class: Pos. norm. non-zero
; hwf : + 1164678317890614 480 (3.92907e+144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110111111 #b1001010110000111100110111111101101000111010000101110)))
(assert (= r (fp #b0 #b10111011111 #b0100001000110100010011001101011010100101110000110110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
