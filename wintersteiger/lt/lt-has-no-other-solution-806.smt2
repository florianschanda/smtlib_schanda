(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5063077619394515949124979670159518718719482421875p-944 {- 2280207448005304 -944 (-1.01297e-284)}
; Y = -1.0000807216036113889146008659736253321170806884765625p-381 {- 363537783945 -381 (-2.03052e-115)}
; -1.5063077619394515949124979670159518718719482421875p-944 < -1.0000807216036113889146008659736253321170806884765625p-381 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001111 #b1000000110011101011000101010111100111101101010111000)))
(assert (= y (fp #b1 #b01010000010 #b0000000000000101010010100100100010100101110010001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
