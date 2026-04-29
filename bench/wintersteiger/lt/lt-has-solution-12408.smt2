(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9606289361796864767484294134192168712615966796875p-40 {+ 4326288119020152 -40 (1.78318e-012)}
; Y = -1.3793013554636595063840331931714899837970733642578125p-829 {- 1708221443127261 -829 (-3.85294e-250)}
; 1.9606289361796864767484294134192168712615966796875p-40 < -1.3793013554636595063840331931714899837970733642578125p-829 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010111 #b1111010111101011110001110010100001111011101001111000)))
(assert (= y (fp #b1 #b00011000010 #b0110000100011001111001001100010100001011011111011101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
