(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.216012833970438133945890513132326304912567138671875p-361 {- 972835318576510 -361 (-2.58887e-109)}
; Y = -1.556061469971226518538287564297206699848175048828125p947 {- 2504278228957506 947 (-1.85111e+285)}
; -1.216012833970438133945890513132326304912567138671875p-361 / -1.556061469971226518538287564297206699848175048828125p947 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010010110 #b0011011101001100100111011111100101101011010101111110)))
(assert (= y (fp #b1 #b11110110010 #b1000111001011010000010110110010000010111100101000010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
