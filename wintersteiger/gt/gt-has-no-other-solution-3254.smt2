(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.777883276099510911905099419527687132358551025390625p520 {+ 3503274832379498 520 (6.1024e+156)}
; Y = 1.73441600785942551254947829875163733959197998046875p140 {+ 3307515659330636 140 (2.41742e+042)}
; 1.777883276099510911905099419527687132358551025390625p520 > 1.73441600785942551254947829875163733959197998046875p140 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000000111 #b1100011100100011010110111011111011110011111001101010)))
(assert (= y (fp #b0 #b10010001011 #b1011110000000010101011111111111101101010010001001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
