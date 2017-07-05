(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1632919973363318177916880813427269458770751953125p732 {- 735401778356488 732 (-2.62812e+220)}
; Y = 1.9650208751768809545268368310644291341304779052734375p-80 {+ 4346067653851351 -80 (1.62543e-024)}
; -1.1632919973363318177916880813427269458770751953125p732 = 1.9650208751768809545268368310644291341304779052734375p-80 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011011 #b0010100111001101100000010001110001000010000100001000)))
(assert (= y (fp #b0 #b01110101111 #b1111011100001011100110111010101011010111100011010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
