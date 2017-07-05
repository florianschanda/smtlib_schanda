(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3266373514264575561583114904351532459259033203125p910 {- 1471043854169480 910 (-1.14828e+274)}
; Y = -1.6773177860067709499247712301439605653285980224609375p244 {- 3050368128671503 244 (-4.7417e+073)}
; -1.3266373514264575561583114904351532459259033203125p910 = -1.6773177860067709499247712301439605653285980224609375p244 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110001101 #b0101001110011110100000010110011000000111010110001000)))
(assert (= y (fp #b1 #b10011110011 #b1010110101100100101100101100101111100101111100001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
