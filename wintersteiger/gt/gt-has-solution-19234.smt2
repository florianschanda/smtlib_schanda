(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.0222688719099368714893216747441329061985015869140625p73 {- 100290083235553 73 (-9.65506e+021)}
; -oo > -1.0222688719099368714893216747441329061985015869140625p73 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10001001000 #b0000010110110011011010011010110010010010011011100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
