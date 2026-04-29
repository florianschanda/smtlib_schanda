(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6142622839873468354454644213546998798847198486328125p-238 {- 2766391393273165 -238 (-3.65456e-072)}
; Y = 1.3459616769423117244031118389102630317211151123046875p-681 {+ 1558072879361867 -681 (1.34155e-205)}
; -1.6142622839873468354454644213546998798847198486328125p-238 < 1.3459616769423117244031118389102630317211151123046875p-681 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010001 #b1001110101000000010010110000010011100100010101001101)))
(assert (= y (fp #b0 #b00101010110 #b0101100010010000111100011100100000100010111101001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
