(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.71788638452239883491756700095720589160919189453125p-676 {- 3233072853829428 -676 (-5.4792e-204)}
; Y = -1.0731623233911788961592037594527937471866607666015625p-460 {- 329493812362073 -460 (-3.60469e-139)}
; -1.71788638452239883491756700095720589160919189453125p-676 = -1.0731623233911788961592037594527937471866607666015625p-460 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011011 #b1011011111000111011001101110111111000100011100110100)))
(assert (= y (fp #b1 #b01000110011 #b0001001010111010110001000001101001000011101101011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
