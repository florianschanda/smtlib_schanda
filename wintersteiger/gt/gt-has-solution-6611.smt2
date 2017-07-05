(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5896740672158407026159920860663987696170806884765625p972 {- 2655655909383305 972 (-6.34547e+292)}
; Y = 1.99311680554144832200336168170906603336334228515625p-774 {+ 4472600475371844 -774 (2.00593e-233)}
; -1.5896740672158407026159920860663987696170806884765625p972 > 1.99311680554144832200336168170906603336334228515625p-774 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001011 #b1001011011110100111000010011000111111101110010001001)))
(assert (= y (fp #b0 #b00011111001 #b1111111000111100111001110010100011101000100101000100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
