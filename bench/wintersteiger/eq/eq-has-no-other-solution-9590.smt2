(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1859508182698406120181289225001819431781768798828125p162 {+ 837448035869293 162 (6.93308e+048)}
; Y = -1.7675244985991762636245994144701398909091949462890625p-762 {- 3456623045888977 -762 (-7.28633e-230)}
; 1.1859508182698406120181289225001819431781768798828125p162 = -1.7675244985991762636245994144701398909091949462890625p-762 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010100001 #b0010111110011010011110010000101100100010001001101101)))
(assert (= y (fp #b1 #b00100000101 #b1100010001111100011111000100110001011100101111010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
