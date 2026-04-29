(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2178350409756399930216730354004539549350738525390625p-495 {+ 981041809366129 -495 (1.19053e-149)}
; Y = 1.8040363778423493812397282454185187816619873046875p-754 {+ 3621057931643128 -754 (1.90383e-227)}
; 1.2178350409756399930216730354004539549350738525390625p-495 = 1.8040363778423493812397282454185187816619873046875p-754 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010000 #b0011011111000100000010011000100011101001110001110001)))
(assert (= y (fp #b0 #b00100001101 #b1100110111010101010100111111101110100000100011111000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
