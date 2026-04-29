(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.74113484237215399019760297960601747035980224609375p813 {- 3337774599938524 813 (-9.51084e+244)}
; -1.74113484237215399019760297960601747035980224609375p813 | == 1.74113484237215399019760297960601747035980224609375p813
; [HW: 1.74113484237215399019760297960601747035980224609375p813] 

; mpf : + 3337774599938524 813
; mpfd: + 3337774599938524 813 (9.51084e+244) class: Pos. norm. non-zero
; hwf : + 3337774599938524 813 (9.51084e+244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100101100 #b1011110110111011000000110101010111101010000111011100)))
(assert (= r (fp #b0 #b11100101100 #b1011110110111011000000110101010111101010000111011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
