(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9210082264264489726457441065576858818531036376953125p834 {- 4147852305339317 834 (-2.20062e+251)}
; -1.9210082264264489726457441065576858818531036376953125p834 | == 1.9210082264264489726457441065576858818531036376953125p834
; [HW: 1.9210082264264489726457441065576858818531036376953125p834] 

; mpf : + 4147852305339317 834
; mpfd: + 4147852305339317 834 (2.20062e+251) class: Pos. norm. non-zero
; hwf : + 4147852305339317 834 (2.20062e+251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000001 #b1110101111000111001100011111001111011001001110110101)))
(assert (= r (fp #b0 #b11101000001 #b1110101111000111001100011111001111011001001110110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
