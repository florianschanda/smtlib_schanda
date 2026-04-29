(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5571451199519079633404317064560018479824066162109375p-392 {- 2509158554606703 -392 (-1.54373e-118)}
; Y = 1.1158042752480892279010049605858512222766876220703125p-40 {+ 521536090855205 -40 (1.01482e-012)}
; -1.5571451199519079633404317064560018479824066162109375p-392 > 1.1158042752480892279010049605858512222766876220703125p-40 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110111 #b1000111010100001000100000000010101010001110001101111)))
(assert (= y (fp #b0 #b01111010111 #b0001110110100101010110010101011011101101011100100101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
