(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.037183201657901232550784698105417191982269287109375p243 {- 167458253130966 243 (-1.46604e+073)}
; Y = 1.9292489400429266854786192197934724390506744384765625p418 {+ 4184965180111753 418 (1.30595e+126)}
; -1.037183201657901232550784698105417191982269287109375p243 < 1.9292489400429266854786192197934724390506744384765625p418 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110010 #b0000100110000100110101101001101100010100110011010110)))
(assert (= y (fp #b0 #b10110100001 #b1110110111100011010000100010111101010011101110001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
