(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6098146022073713812261530620162375271320343017578125p935 {+ 2746360815266205 935 (4.67543e+281)}
; 1.6098146022073713812261530620162375271320343017578125p935 S == 1.794332523367601073260857447166927158832550048828125p467
; [HW: 1.794332523367601073260857447166927158832550048828125p467] 

; mpf : + 3577355656246594 467
; mpfd: + 3577355656246594 467 (6.83771e+140) class: Pos. norm. non-zero
; hwf : + 3577355656246594 467 (6.83771e+140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100110 #b1001110000011100110011110100110100011010100110011101)))
(assert (= r (fp #b0 #b10111010010 #b1100101101011001011000000101001000000011010101000010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
