(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9376002924276998218289236319833435118198394775390625p514 {+ 4222576327599857 514 (1.03916e+155)}
; 1.9376002924276998218289236319833435118198394775390625p514 | == 1.9376002924276998218289236319833435118198394775390625p514
; [HW: 1.9376002924276998218289236319833435118198394775390625p514] 

; mpf : + 4222576327599857 514
; mpfd: + 4222576327599857 514 (1.03916e+155) class: Pos. norm. non-zero
; hwf : + 4222576327599857 514 (1.03916e+155) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000001 #b1111000000000110100100101010000010110010011011110001)))
(assert (= r (fp #b0 #b11000000001 #b1111000000000110100100101010000010110010011011110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
