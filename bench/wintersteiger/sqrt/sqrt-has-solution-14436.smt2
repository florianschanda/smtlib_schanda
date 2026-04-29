(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7416501324246136395146322684013284742832183837890625p-858 {+ 3340095260026769 -858 (9.06201e-259)}
; 1.7416501324246136395146322684013284742832183837890625p-858 S == 1.31971592868488674099580748588778078556060791015625p-429
; [HW: 1.31971592868488674099580748588778078556060791015625p-429] 

; mpf : + 1439872537289668 -429
; mpfd: + 1439872537289668 -429 (9.51946e-130) class: Pos. norm. non-zero
; hwf : + 1439872537289668 -429 (9.51946e-130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100101 #b1011110111011100110010000111011111010110011110010001)))
(assert (= r (fp #b0 #b01001010010 #b0101000111011000111001110011000110110110001111000100)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
