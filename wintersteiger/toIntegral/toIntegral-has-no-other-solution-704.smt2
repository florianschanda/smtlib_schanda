(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.657324799047220409420333453454077243804931640625 989 {- 2960327720050448 989 (-8.67108e+297)}
; -1.657324799047220409420333453454077243804931640625 989 I == -1.657324799047220409420333453454077243804931640625 989
; [HW: -1.657324799047220409420333453454077243804931640625 989] 

; mpf : - 2960327720050448 989
; mpfd: - 2960327720050448 989 (-8.67108e+297) class: Neg. norm. non-zero
; hwf : - 2960327720050448 989 (-8.67108e+297) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011100 #b1010100001000110011100000010001011000001111100010000)))
(assert (= r (fp #b1 #b11111011100 #b1010100001000110011100000010001011000001111100010000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
