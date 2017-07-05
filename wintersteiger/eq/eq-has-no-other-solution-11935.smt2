(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.488457475375089433811126582440920174121856689453125p-477 {- 2199816904085586 -477 (-3.81442e-144)}
; Y = -1.780605229176841941551856507430784404277801513671875p422 {- 3515533419244286 422 (-1.92853e+127)}
; -1.488457475375089433811126582440920174121856689453125p-477 = -1.780605229176841941551856507430784404277801513671875p422 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100010 #b0111110100001011100011001001001000111001000001010010)))
(assert (= y (fp #b1 #b10110100101 #b1100011111010101101111101000101001100110101011111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
