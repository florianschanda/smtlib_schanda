(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.70074640453438252762907723081298172473907470703125p24 {+ 3155881246342260 24 (2.85338e+007)}
; Y = 1.654107240174002679822251593577675521373748779296875p468 {+ 2945837123107982 468 (1.26067e+141)}
; 1.70074640453438252762907723081298172473907470703125p24 > 1.654107240174002679822251593577675521373748779296875p468 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000010111 #b1011001101100100000111011100101001000011110001110100)))
(assert (= y (fp #b0 #b10111010011 #b1010011101110011100100100111010010011111110010001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
