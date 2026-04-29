(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6484552192942751869253470431431196630001068115234375p207 {+ 2920382683980151 207 (3.39068e+062)}
; Y = -1.411402021984382582076023027184419333934783935546875p548 {- 1852789992908334 548 (-1.30043e+165)}
; 1.6484552192942751869253470431431196630001068115234375p207 < -1.411402021984382582076023027184419333934783935546875p548 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001110 #b1010011000000001001010010100011111001010000101110111)))
(assert (= y (fp #b1 #b11000100011 #b0110100101010001101001001001010111101110011000101110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
