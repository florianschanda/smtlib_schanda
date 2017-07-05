(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.29429951492783157362964630010537803173065185546875p-820 {+ 1325407185764300 -820 (1.85114e-247)}
; Y = 1.1136769084879871716253774138749577105045318603515625p-817 {+ 511955282707129 -817 (1.27424e-246)}
; 1.29429951492783157362964630010537803173065185546875p-820 > 1.1136769084879871716253774138749577105045318603515625p-817 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001011 #b0100101101010111001101101000011111010111111111001100)))
(assert (= y (fp #b0 #b00011001110 #b0001110100011001111011100000110001000100001010111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
