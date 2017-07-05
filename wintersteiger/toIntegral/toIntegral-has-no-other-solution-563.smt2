(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.057186783905709859254784532822668552398681640625 818 {- 257546378688272 818 (-1.84794e+246)}
; -1.057186783905709859254784532822668552398681640625 818 I == -1.057186783905709859254784532822668552398681640625 818
; [HW: -1.057186783905709859254784532822668552398681640625 818] 

; mpf : - 257546378688272 818
; mpfd: - 257546378688272 818 (-1.84794e+246) class: Neg. norm. non-zero
; hwf : - 257546378688272 818 (-1.84794e+246) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110001 #b0000111010100011110010110000011010100011011100010000)))
(assert (= r (fp #b1 #b11100110001 #b0000111010100011110010110000011010100011011100010000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
