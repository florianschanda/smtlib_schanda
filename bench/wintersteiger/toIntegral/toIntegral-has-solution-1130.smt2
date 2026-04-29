(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5610736682473278502669700174010358750820159912109375 641 {+ 2526851163246063 641 (1.42446e+193)}
; 1.5610736682473278502669700174010358750820159912109375 641 I == 1.5610736682473278502669700174010358750820159912109375 641
; [HW: 1.5610736682473278502669700174010358750820159912109375 641] 

; mpf : + 2526851163246063 641
; mpfd: + 2526851163246063 641 (1.42446e+193) class: Pos. norm. non-zero
; hwf : + 2526851163246063 641 (1.42446e+193) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000000 #b1000111110100010100001100001111111000100110111101111)))
(assert (= r (fp #b0 #b11010000000 #b1000111110100010100001100001111111000100110111101111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
