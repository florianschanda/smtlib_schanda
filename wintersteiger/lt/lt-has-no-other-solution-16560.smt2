(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.254358326840474990859775061835534870624542236328125p-271 {+ 1145528065977346 -271 (3.30592e-082)}
; Y = 1.2427626710763541861837211399688385426998138427734375p129 {+ 1093305874998935 129 (8.4578e+038)}
; 1.254358326840474990859775061835534870624542236328125p-271 < 1.2427626710763541861837211399688385426998138427734375p129 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110000 #b0100000100011101101000001001011100111110110000000010)))
(assert (= y (fp #b0 #b10010000000 #b0011111000100101101100011100010011110110011010010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
