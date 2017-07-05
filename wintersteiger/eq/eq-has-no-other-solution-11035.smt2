(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9293677435121716623456222805543802678585052490234375p571 {+ 4185500223371575 571 (1.49122e+172)}
; Y = -1.9800316383731220160058228429988957941532135009765625p194 {- 4413670121388489 194 (-4.97154e+058)}
; 1.9293677435121716623456222805543802678585052490234375p571 = -1.9800316383731220160058228429988957941532135009765625p194 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111010 #b1110110111101011000010110110000001010111100100110111)))
(assert (= y (fp #b1 #b10011000001 #b1111101011100011010110100111101111011011100111001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
