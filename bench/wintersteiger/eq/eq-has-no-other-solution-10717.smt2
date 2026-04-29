(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.749520129578033600381559153902344405651092529296875p753 {- 3375538576274318 753 (-8.28907e+226)}
; Y = -1.6490750104073226278700303737423382699489593505859375p686 {- 2923173975005919 686 (-5.29441e+206)}
; -1.749520129578033600381559153902344405651092529296875p753 = -1.6490750104073226278700303737423382699489593505859375p686 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110000 #b1011111111100000100011010001110000111011001110001110)))
(assert (= y (fp #b1 #b11010101101 #b1010011000101001110001111010011001011001101011011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
