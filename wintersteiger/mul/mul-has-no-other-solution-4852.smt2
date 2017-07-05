(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7254289557880080341334405602538026869297027587890625p-302 {+ 3267041574970641 -302 (2.11757e-091)}
; Y = 1.2100824734172495045214645870146341621875762939453125p-980 {+ 946127348998997 -980 (1.18418e-295)}
; 1.7254289557880080341334405602538026869297027587890625p-302 * 1.2100824734172495045214645870146341621875762939453125p-980 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010001 #b1011100110110101101101100100100010101110010100010001)))
(assert (= y (fp #b0 #b00000101011 #b0011010111000111111101110000100011001010001101010101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
