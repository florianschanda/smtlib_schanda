(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.513259362996364654208036881755106151103973388671875p691 {+ 2311514675934846 691 (1.55468e+208)}
; Y = -1.7577939142960590235276185921975411474704742431640625p-671 {- 3412800390047361 -671 (-1.79408e-202)}
; 1.513259362996364654208036881755106151103973388671875p691 < -1.7577939142960590235276185921975411474704742431640625p-671 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110010 #b1000001101100100111101110011001001101111011001111110)))
(assert (= y (fp #b1 #b00101100000 #b1100000111111110110010000010111100000010011010000001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
