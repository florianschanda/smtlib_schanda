(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.215616861456767505700327092199586331844329833984375p-597 {- 971052016911494 -597 (-2.34363e-180)}
; Y = -1.18087223254029982655310959671624004840850830078125p624 {- 814576119070164 624 (-8.22092e+187)}
; -1.215616861456767505700327092199586331844329833984375p-597 = -1.18087223254029982655310959671624004840850830078125p624 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110101010 #b0011011100110010101010101010100001101100010010000110)))
(assert (= y (fp #b1 #b11001101111 #b0010111001001101101001001000001110000011110111010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
