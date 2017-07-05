(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0615205409712700213020752926240675151348114013671875p-125 {- 277063885393843 -125 (-2.49562e-038)}
; Y = -1.453695668786706196584646022529341280460357666015625p858 {- 2043263644887418 858 (-2.79389e+258)}
; -1.0615205409712700213020752926240675151348114013671875p-125 = -1.453695668786706196584646022529341280460357666015625p858 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000010 #b0000111110111111110011110110011110000000111110110011)))
(assert (= y (fp #b1 #b11101011001 #b0111010000100101011001100011101111000110100101111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
