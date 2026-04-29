(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.52002816887836456061222634161822497844696044921875p-208 {- 2341998667582764 -208 (-3.69498e-063)}
; Y = -1.8474053865483368586097867591888643801212310791015625p-119 {- 3816374583090841 -119 (-2.77967e-036)}
; -1.52002816887836456061222634161822497844696044921875p-208 = -1.8474053865483368586097867591888643801212310791015625p-119 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100101111 #b1000010100100000100100001110101001010100110100101100)))
(assert (= y (fp #b1 #b01110001000 #b1101100011101111100011110011010110101101111010011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
