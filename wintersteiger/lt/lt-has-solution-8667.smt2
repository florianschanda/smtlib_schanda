(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.973935480422654986654151798575185239315032958984375p937 {+ 4386215466714374 937 (2.29318e+282)}
; Y = -1.3041632543956307443977493676356971263885498046875p508 {- 1369829519155960 508 (-1.09287e+153)}
; 1.973935480422654986654151798575185239315032958984375p937 < -1.3041632543956307443977493676356971263885498046875p508 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101000 #b1111100101010011110101011110110011010100010100000110)))
(assert (= y (fp #b1 #b10111111011 #b0100110111011101101001001001111001000110001011111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
