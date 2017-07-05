(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5051139866293288260834515313035808503627777099609375p-641 {+ 2274831161963471 -641 (1.64946e-193)}
; Y = -1.5213502207236111463117822495405562222003936767578125p-371 {- 2347952659780381 -371 (-3.16301e-112)}
; 1.5051139866293288260834515313035808503627777099609375p-641 * -1.5213502207236111463117822495405562222003936767578125p-371 == -1.14490274788636181568790561868809163570404052734375p-1011
; [HW: -1.14490274788636181568790561868809163570404052734375p-1011] 

; mpf : - 652583961385980 -1011
; mpfd: - 652583961385980 -1011 (-5.21727e-305) class: Neg. norm. non-zero
; hwf : - 652583961385980 -1011 (-5.21727e-305) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101111110 #b1000000101001111001001100111010101010011001111001111)))
(assert (= y (fp #b1 #b01010001100 #b1000010101110111001101010100001111000101001100011101)))
(assert (= r (fp #b1 #b00000001100 #b0010010100011000010110001011001101000101101111111100)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
