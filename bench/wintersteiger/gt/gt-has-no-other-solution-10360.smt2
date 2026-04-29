(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6313214945777272379956457371008582413196563720703125p646 {+ 2843219247731237 646 (4.7634e+194)}
; Y = 1.1447070271216179815354507809388451278209686279296875p-672 {+ 651702513422811 -672 (5.84167e-203)}
; 1.6313214945777272379956457371008582413196563720703125p646 > 1.1447070271216179815354507809388451278209686279296875p-672 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000101 #b1010000110011110010010010001010001111001001000100101)))
(assert (= y (fp #b0 #b00101011111 #b0010010100001011100001010000110011111101000111011011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
