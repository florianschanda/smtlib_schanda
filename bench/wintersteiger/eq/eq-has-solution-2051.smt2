(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.542745969724867105554722002125345170497894287109375p-263 {- 2444310547009750 -263 (-1.04089e-079)}
; Y = 1.6613349469930527302352629703818820416927337646484375p-209 {+ 2978387820844999 -209 (2.01924e-063)}
; -1.542745969724867105554722002125345170497894287109375p-263 = 1.6613349469930527302352629703818820416927337646484375p-209 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111000 #b1000101011110001011001100101111000000001000011010110)))
(assert (= y (fp #b0 #b01100101110 #b1010100101001101001111110100000100001001011111000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
