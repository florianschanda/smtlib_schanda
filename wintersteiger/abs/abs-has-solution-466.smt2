(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.352422802989723837896463010110892355442047119140625p637 {- 1587171204221386 637 (-7.71294e+191)}
; -1.352422802989723837896463010110892355442047119140625p637 | == 1.352422802989723837896463010110892355442047119140625p637
; [HW: 1.352422802989723837896463010110892355442047119140625p637] 

; mpf : + 1587171204221386 637
; mpfd: + 1587171204221386 637 (7.71294e+191) class: Pos. norm. non-zero
; hwf : + 1587171204221386 637 (7.71294e+191) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111100 #b0101101000111000011000010111110100110100100111001010)))
(assert (= r (fp #b0 #b11001111100 #b0101101000111000011000010111110100110100100111001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
