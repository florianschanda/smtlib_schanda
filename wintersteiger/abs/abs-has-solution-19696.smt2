(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.302879740820880538620940569671802222728729248046875p783 {- 1364049087898990 783 (-6.62813e+235)}
; -1.302879740820880538620940569671802222728729248046875p783 | == 1.302879740820880538620940569671802222728729248046875p783
; [HW: 1.302879740820880538620940569671802222728729248046875p783] 

; mpf : + 1364049087898990 783
; mpfd: + 1364049087898990 783 (6.62813e+235) class: Pos. norm. non-zero
; hwf : + 1364049087898990 783 (6.62813e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001110 #b0100110110001001100001101101010101110010010101101110)))
(assert (= r (fp #b0 #b11100001110 #b0100110110001001100001101101010101110010010101101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
