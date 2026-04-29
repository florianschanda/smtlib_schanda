(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.872067867068941904307166623766534030437469482421875p424 {- 3927444521173470 424 (-8.11035e+127)}
; Y = 1.6868425278072380901761562199681065976619720458984375p-637 {+ 3093263752294887 -637 (2.95779e-192)}
; -1.872067867068941904307166623766534030437469482421875p424 > 1.6868425278072380901761562199681065976619720458984375p-637 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100111 #b1101111100111111110101101111100011110100000111011110)))
(assert (= y (fp #b0 #b00110000010 #b1010111111010100111010010111001001101111000111100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
