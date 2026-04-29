(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.691091736445837767632838222198188304901123046875p-989 {+ 3112400486736304 -989 (3.23222e-298)}
; Y = -1.7092346176029724613698590474086813628673553466796875p13 {- 3194108759555003 13 (-14002)}
; 1.691091736445837767632838222198188304901123046875p-989 < -1.7092346176029724613698590474086813628673553466796875p13 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000100010 #b1011000011101011011000110101011010010010000110110000)))
(assert (= y (fp #b1 #b10000001100 #b1011010110010000011001100101111111001011101110111011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
