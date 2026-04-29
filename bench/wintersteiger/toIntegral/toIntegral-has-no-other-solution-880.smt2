(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.67857710446626118283575124223716557025909423828125 769 {+ 3056039594816404 769 (5.21204e+231)}
; 1.67857710446626118283575124223716557025909423828125 769 I == 1.67857710446626118283575124223716557025909423828125 769
; [HW: 1.67857710446626118283575124223716557025909423828125 769] 

; mpf : + 3056039594816404 769
; mpfd: + 3056039594816404 769 (5.21204e+231) class: Pos. norm. non-zero
; hwf : + 3056039594816404 769 (5.21204e+231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000000 #b1010110110110111001110101010011101111111001110010100)))
(assert (= r (fp #b0 #b11100000000 #b1010110110110111001110101010011101111111001110010100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
