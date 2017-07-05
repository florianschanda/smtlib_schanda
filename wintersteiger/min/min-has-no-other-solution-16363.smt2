(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.508482480394884195362692480557598173618316650390625p694 {+ 2290001509230826 694 (1.23982e+209)}
; Y = -1.55400520515957651923599769361317157745361328125p974 {- 2495017635517984 974 (-2.48124e+293)}
; 1.508482480394884195362692480557598173618316650390625p694 m -1.55400520515957651923599769361317157745361328125p974 == -1.55400520515957651923599769361317157745361328125p974
; [HW: -1.55400520515957651923599769361317157745361328125p974] 

; mpf : - 2495017635517984 974
; mpfd: - 2495017635517984 974 (-2.48124e+293) class: Neg. norm. non-zero
; hwf : - 2495017635517984 974 (-2.48124e+293) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110101 #b1000001000101011111010000110011111100010100011101010)))
(assert (= y (fp #b1 #b11111001101 #b1000110111010011010010001111110111111001011000100000)))
(assert (= r (fp #b1 #b11111001101 #b1000110111010011010010001111110111111001011000100000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
