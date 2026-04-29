(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.78244564675772831918720839894376695156097412109375p556 {+ 3523821923175772 556 (4.2043e+167)}
; 1.78244564675772831918720839894376695156097412109375p556 | == 1.78244564675772831918720839894376695156097412109375p556
; [HW: 1.78244564675772831918720839894376695156097412109375p556] 

; mpf : + 3523821923175772 556
; mpfd: + 3523821923175772 556 (4.2043e+167) class: Pos. norm. non-zero
; hwf : + 3523821923175772 556 (4.2043e+167) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101011 #b1100100001001110010110111001111110111000110101011100)))
(assert (= r (fp #b0 #b11000101011 #b1100100001001110010110111001111110111000110101011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
