(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.469933005626934185983145653153769671916961669921875p-657 {+ 2116390109030558 -657 (2.45805e-198)}
; Y = 1.07465689799902808232445750036276876926422119140625p-455 {+ 336224778009060 -455 (1.15511e-137)}
; 1.469933005626934185983145653153769671916961669921875p-657 < 1.07465689799902808232445750036276876926422119140625p-455 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101110 #b0111100001001101100001111000101001111010100010011110)))
(assert (= y (fp #b0 #b01000111000 #b0001001100011100101101101110011101010011100111100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
