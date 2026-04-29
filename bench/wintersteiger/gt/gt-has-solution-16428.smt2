(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4120291956700159463622412658878602087497711181640625p-24 {- 1855614532085249 -24 (-8.41635e-008)}
; Y = 1.0937495832868222578326822258532047271728515625p-191 {+ 422210588356672 -191 (3.48489e-058)}
; -1.4120291956700159463622412658878602087497711181640625p-24 > 1.0937495832868222578326822258532047271728515625p-191 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100111 #b0110100101111010101111101101000001100110011000000001)))
(assert (= y (fp #b0 #b01101000000 #b0001011111111111111110010000001000111011000001000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
