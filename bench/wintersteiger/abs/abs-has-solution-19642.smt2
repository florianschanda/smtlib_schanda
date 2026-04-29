(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.690666671250553587668719046632759273052215576171875p-114 {+ 3110486163281214 -114 (8.14026e-035)}
; 1.690666671250553587668719046632759273052215576171875p-114 | == 1.690666671250553587668719046632759273052215576171875p-114
; [HW: 1.690666671250553587668719046632759273052215576171875p-114] 

; mpf : + 3110486163281214 -114
; mpfd: + 3110486163281214 -114 (8.14026e-035) class: Pos. norm. non-zero
; hwf : + 3110486163281214 -114 (8.14026e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001101 #b1011000011001111100001111110110101110101010100111110)))
(assert (= r (fp #b0 #b01110001101 #b1011000011001111100001111110110101110101010100111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
