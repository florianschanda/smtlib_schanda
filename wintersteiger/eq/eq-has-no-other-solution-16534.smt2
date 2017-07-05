(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.248444602374180423254301786073483526706695556640625p-469 {- 1118895018674570 -469 (-8.19033e-142)}
; Y = 1.0190911803772657595601458524470217525959014892578125p-150 {+ 85979032833117 -150 (7.14025e-046)}
; -1.248444602374180423254301786073483526706695556640625p-469 = 1.0190911803772657595601458524470217525959014892578125p-150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101010 #b0011111110011010000100001100001000010000100110001010)))
(assert (= y (fp #b0 #b01101101001 #b0000010011100011001010001101101101011100110001011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
