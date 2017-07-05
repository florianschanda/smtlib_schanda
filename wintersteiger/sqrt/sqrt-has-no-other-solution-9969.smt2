(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7778342418308514805147524384665302932262420654296875p217 {+ 3503054001665435 217 (3.74456e+065)}
; 1.7778342418308514805147524384665302932262420654296875p217 S == 1.8856480275124789525165169834508560597896575927734375p108
; [HW: 1.8856480275124789525165169834508560597896575927734375p108] 

; mpf : + 3988604126686615 108
; mpfd: + 3988604126686615 108 (6.11928e+032) class: Pos. norm. non-zero
; hwf : + 3988604126686615 108 (6.11928e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011000 #b1100011100100000001001010001011001011111010110011011)))
(assert (= r (fp #b0 #b10001101011 #b1110001010111001110101000100000111101110110110010111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
