(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.17528667854670398895677863038145005702972412109375p880 {+ 789421020185948 880 (9.47414e+264)}
; Y = -1.1535993129432442483306431313394568860530853271484375p773 {- 691749808535559 773 (-5.73115e+232)}
; 1.17528667854670398895677863038145005702972412109375p880 = -1.1535993129432442483306431313394568860530853271484375p773 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101111 #b0010110011011111100101100111011111001000010101011100)))
(assert (= y (fp #b1 #b11100000100 #b0010011101010010010010001101100111000111100000000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
