(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9151844665660517907923576785833574831485748291015625p-745 {+ 4121624422602137 -745 (1.03482e-224)}
; Y = -1.6831154652436952634531053263344801962375640869140625p615 {- 3076478554722529 615 (-2.28855e+185)}
; 1.9151844665660517907923576785833574831485748291015625p-745 < -1.6831154652436952634531053263344801962375640869140625p615 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010110 #b1110101001001001100001110111100110110101010110011001)))
(assert (= y (fp #b1 #b11001100110 #b1010111011100000101001111011011010011101000011100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
