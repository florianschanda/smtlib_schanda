(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.60723828622763420526098343543708324432373046875p20 {- 2734758119579872 20 (-1.68531e+006)}
; -1.60723828622763420526098343543708324432373046875p20 | == 1.60723828622763420526098343543708324432373046875p20
; [HW: 1.60723828622763420526098343543708324432373046875p20] 

; mpf : + 2734758119579872 20
; mpfd: + 2734758119579872 20 (1.68531e+006) class: Pos. norm. non-zero
; hwf : + 2734758119579872 20 (1.68531e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000010011 #b1001101101110011111101111110010000111010000011100000)))
(assert (= r (fp #b0 #b10000010011 #b1001101101110011111101111110010000111010000011100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
