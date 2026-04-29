(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8021066747185219281135459823417477309703826904296875p851 {- 3612367321373723 851 (-2.70587e+256)}
; Y = 1.382887935372838938974382472224533557891845703125p942 {+ 1724373963069776 942 (5.14094e+283)}
; -1.8021066747185219281135459823417477309703826904296875p851 > 1.382887935372838938974382472224533557891845703125p942 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010010 #b1100110101010110110111001110111111010001110000011011)))
(assert (= y (fp #b0 #b11110101101 #b0110001000000100111100011001100001110101100101010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
