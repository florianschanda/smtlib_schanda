(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4402889106527394513790341079584322869777679443359375p-549 {+ 1982884973951039 -549 (7.81595e-166)}
; Y = 1.332982410793505767543365436722524464130401611328125p894 {+ 1499619461170562 894 (1.76052e+269)}
; 1.4402889106527394513790341079584322869777679443359375p-549 > 1.332982410793505767543365436722524464130401611328125p894 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011010 #b0111000010110110110001100010100000001011100000111111)))
(assert (= y (fp #b0 #b11101111101 #b0101010100111110010101011101010010000000010110000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
