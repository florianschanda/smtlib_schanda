(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.65984590593685599202444791444577276706695556640625p-899 {+ 2971681776099172 -899 (3.92737e-271)}
; Y = -1.8343738423586823937938561357441358268260955810546875p40 {- 3757685725534251 40 (-2.01692e+012)}
; 1.65984590593685599202444791444577276706695556640625p-899 m -1.8343738423586823937938561357441358268260955810546875p40 == -1.8343738423586823937938561357441358268260955810546875p40
; [HW: -1.8343738423586823937938561357441358268260955810546875p40] 

; mpf : - 3757685725534251 40
; mpfd: - 3757685725534251 40 (-2.01692e+012) class: Neg. norm. non-zero
; hwf : - 3757685725534251 40 (-2.01692e+012) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111100 #b1010100011101011101010010100101001100101111101100100)))
(assert (= y (fp #b1 #b10000100111 #b1101010110011001100001100010110110010001100000101011)))
(assert (= r (fp #b1 #b10000100111 #b1101010110011001100001100010110110010001100000101011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
