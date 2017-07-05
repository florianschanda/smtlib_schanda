(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.27727892180379409836632476071827113628387451171875p794 {- 1248753248913260 794 (-1.33077e+239)}
; -1.27727892180379409836632476071827113628387451171875p794 | == 1.27727892180379409836632476071827113628387451171875p794
; [HW: 1.27727892180379409836632476071827113628387451171875p794] 

; mpf : + 1248753248913260 794
; mpfd: + 1248753248913260 794 (1.33077e+239) class: Pos. norm. non-zero
; hwf : + 1248753248913260 794 (1.33077e+239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100011001 #b0100011011111011110000000101110100000100011101101100)))
(assert (= r (fp #b0 #b11100011001 #b0100011011111011110000000101110100000100011101101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
