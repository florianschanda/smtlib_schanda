(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.675239854242345227675059504690580070018768310546875p1013 {+ 3041009955951534 1013 (1.47049e+305)}
; Y = 1.0269483222300441749297306159860454499721527099609375p88 {+ 121364453953487 88 (3.17825e+026)}
; 1.675239854242345227675059504690580070018768310546875p1013 < 1.0269483222300441749297306159860454499721527099609375p88 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110100 #b1010110011011100100001001110001011101101001110101110)))
(assert (= y (fp #b0 #b10001010111 #b0000011011100110000101011101001010101000111111001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
