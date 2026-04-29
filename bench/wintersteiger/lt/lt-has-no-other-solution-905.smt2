(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5058109289779559869515423997654579579830169677734375p865 {+ 2277969911265047 865 (3.70439e+260)}
; Y = 1.1421120634948322969393075254629366099834442138671875p343 {+ 640015836200179 343 (2.04643e+103)}
; 1.5058109289779559869515423997654579579830169677734375p865 < 1.1421120634948322969393075254629366099834442138671875p343 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100000 #b1000000101111100110100110011010111101011011100010111)))
(assert (= y (fp #b0 #b10101010110 #b0010010001100001011101001100100100010011110011110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
