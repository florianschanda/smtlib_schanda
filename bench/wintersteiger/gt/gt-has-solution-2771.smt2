(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.936325335524019752853064346709288656711578369140625p446 {- 4216834432163530 446 (-3.51849e+134)}
; Y = 1.191746003456419789046094592777080833911895751953125p-952 {+ 863547229716114 -952 (3.1306e-287)}
; -1.936325335524019752853064346709288656711578369140625p446 > 1.191746003456419789046094592777080833911895751953125p-952 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111101 #b1110111110110011000001000110011001111101111011001010)))
(assert (= y (fp #b0 #b00001000111 #b0011000100010110010001000001110111111011111010010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
