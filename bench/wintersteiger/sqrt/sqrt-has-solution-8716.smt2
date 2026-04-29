(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.69699601040685621455850196070969104766845703125p-218 {+ 3138990972747040 -218 (4.02849e-066)}
; 1.69699601040685621455850196070969104766845703125p-218 S == 1.3026879942667992651195163489319384098052978515625p-109
; [HW: 1.3026879942667992651195163489319384098052978515625p-109] 

; mpf : + 1363185538189480 -109
; mpfd: + 1363185538189480 -109 (2.00711e-033) class: Pos. norm. non-zero
; hwf : + 1363185538189480 -109 (2.00711e-033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100101 #b1011001001101110010101001001111000100011110100100000)))
(assert (= r (fp #b0 #b01110010010 #b0100110101111100111101011101110001000100100010101000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
