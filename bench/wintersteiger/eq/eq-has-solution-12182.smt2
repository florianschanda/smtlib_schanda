(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.478596065857165964274599900818429887294769287109375p75 {- 2155405063855318 75 (-5.58598e+022)}
; Y = 1.438382015838276739572165752178989350795745849609375p-98 {+ 1974297083175190 -98 (4.53873e-030)}
; -1.478596065857165964274599900818429887294769287109375p75 = 1.438382015838276739572165752178989350795745849609375p-98 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001010 #b0111101010000101010001011001001011011001110011010110)))
(assert (= y (fp #b0 #b01110011101 #b0111000000111001110011011100010100101110000100010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
