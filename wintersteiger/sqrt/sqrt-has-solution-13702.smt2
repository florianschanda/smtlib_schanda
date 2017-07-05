(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9416732110762942031811917331651784479618072509765625p-946 {+ 4240919122507977 -946 (3.26438e-285)}
; 1.9416732110762942031811917331651784479618072509765625p-946 S == 1.39343934603422692219965028925798833370208740234375p-473
; [HW: 1.39343934603422692219965028925798833370208740234375p-473] 

; mpf : + 1771893292192636 -473
; mpfd: + 1771893292192636 -473 (5.71347e-143) class: Pos. norm. non-zero
; hwf : + 1771893292192636 -473 (5.71347e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001101 #b1111000100010001011111101101110100010111100011001001)))
(assert (= r (fp #b0 #b01000100110 #b0110010010111000011100001110010000101101001101111100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
