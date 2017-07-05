(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.74790815176473746106466933269985020160675048828125p49 {+ 3368278873595028 49 (9.83985e+014)}
; 1.74790815176473746106466933269985020160675048828125p49 S == 1.8697102191327605869020089812693186104297637939453125p24
; [HW: 1.8697102191327605869020089812693186104297637939453125p24] 

; mpf : + 3916826618806613 24
; mpfd: + 3916826618806613 24 (3.13685e+007) class: Pos. norm. non-zero
; hwf : + 3916826618806613 24 (3.13685e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110000 #b1011111101110110111010001001110000111101110010010100)))
(assert (= r (fp #b0 #b10000010111 #b1101111010100101010101000011010000101100000101010101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
