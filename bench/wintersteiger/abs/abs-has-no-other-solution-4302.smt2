(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6337794808968382209712899566511623561382293701171875p582 {- 2854289034002067 582 (-2.58613e+175)}
; -1.6337794808968382209712899566511623561382293701171875p582 | == 1.6337794808968382209712899566511623561382293701171875p582
; [HW: 1.6337794808968382209712899566511623561382293701171875p582] 

; mpf : + 2854289034002067 582
; mpfd: + 2854289034002067 582 (2.58613e+175) class: Pos. norm. non-zero
; hwf : + 2854289034002067 582 (2.58613e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000101 #b1010001000111111010111110011111101010011111010010011)))
(assert (= r (fp #b0 #b11001000101 #b1010001000111111010111110011111101010011111010010011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
