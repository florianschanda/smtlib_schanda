(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.1780313683923993028912491354276426136493682861328125p132 {- 801782004352269 132 (-6.41381e+039)}
; +oo < -1.1780313683923993028912491354276426136493682861328125p132 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10010000011 #b0010110110010011011101101011100011101000010100001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
