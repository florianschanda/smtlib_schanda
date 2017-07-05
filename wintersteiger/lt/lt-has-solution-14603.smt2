(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.521050807706324281554088884149678051471710205078125p-940 {+ 2346604223427298 -940 (1.63662e-283)}
; Y = 1.2295407390770007882707659518928267061710357666015625p-686 {+ 1033759586973529 -686 (3.82971e-207)}
; 1.521050807706324281554088884149678051471710205078125p-940 < 1.2295407390770007882707659518928267061710357666015625p-686 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010011 #b1000010101100011100101011111001010100111001011100010)))
(assert (= y (fp #b0 #b00101010001 #b0011101011000011001011101000111101101111011101011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
