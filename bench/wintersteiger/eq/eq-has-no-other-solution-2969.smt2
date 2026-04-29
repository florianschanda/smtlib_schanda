(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.836509116124984242190976146957837045192718505859375p-634 {+ 3767302143672502 -634 (2.57618e-191)}
; Y = 1.5992339594633671051582268773927353322505950927734375p-392 {+ 2698709836546967 -392 (1.58545e-118)}
; 1.836509116124984242190976146957837045192718505859375p-634 = 1.5992339594633671051582268773927353322505950927734375p-392 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110000101 #b1101011000100101011101100010000010010000000010110110)))
(assert (= y (fp #b0 #b01001110111 #b1001100101100111011001011001001010001100001110010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
