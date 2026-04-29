(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.231445332959470562173009966500103473663330078125p-388 {- 1042337115272912 -388 (-1.95334e-117)}
; Y = 1.8891085580988973280369691565283574163913726806640625p-196 {+ 4004188970946113 -196 (1.88095e-059)}
; -1.231445332959470562173009966500103473663330078125p-388 < 1.8891085580988973280369691565283574163913726806640625p-196 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111011 #b0011101101000000000000000101011111011111011011010000)))
(assert (= y (fp #b0 #b01100111011 #b1110001110011100100111100101001110100000111001000001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
