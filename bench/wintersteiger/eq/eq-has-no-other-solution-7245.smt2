(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0814348254753716194187518340186215937137603759765625p529 {- 366749849665865 529 (-1.9005e+159)}
; Y = -1.83428900395074823137520070304162800312042236328125p-915 {- 3757303647311892 -915 (-6.6225e-276)}
; -1.0814348254753716194187518340186215937137603759765625p529 = -1.83428900395074823137520070304162800312042236328125p-915 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010000 #b0001010011011000111010011010100000101100000101001001)))
(assert (= y (fp #b1 #b00001101100 #b1101010110010011111101101101001101100001100000010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
