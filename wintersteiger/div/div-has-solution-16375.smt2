(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.067765936799187631578433865797705948352813720703125p-592 {- 305190647717234 -592 (-6.58747e-179)}
; Y = -1.0873518786366946908827912920969538390636444091796875p-226 {- 393397888078331 -226 (-1.0083e-068)}
; -1.067765936799187631578433865797705948352813720703125p-592 / -1.0873518786366946908827912920969538390636444091796875p-226 == 1.96397497034342993771360852406360208988189697265625p-367
; [HW: 1.96397497034342993771360852406360208988189697265625p-367] 

; mpf : + 4341357317233156 -367
; mpfd: + 4341357317233156 -367 (6.53322e-111) class: Pos. norm. non-zero
; hwf : + 4341357317233156 -367 (6.53322e-111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110101111 #b0001000101011001000110111100001001010101110101110010)))
(assert (= y (fp #b1 #b01100011101 #b0001011001011100101100010101010111111101000111111011)))
(assert (= r (fp #b0 #b01010010000 #b1111011011000111000100000100101111001001101000000100)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
