(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.022438815748419216333786607719957828521728515625p772 {- 101055442243216 772 (-2.53977e+232)}
; Y = 1.41275165548241954383001939277164638042449951171875p-768 {+ 1858868201827180 -768 (9.09974e-232)}
; -1.022438815748419216333786607719957828521728515625p772 > 1.41275165548241954383001939277164638042449951171875p-768 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000011 #b0000010110111110100011001101101111001100111010010000)))
(assert (= y (fp #b0 #b00011111111 #b0110100110101010000101111010110110101010101101101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
