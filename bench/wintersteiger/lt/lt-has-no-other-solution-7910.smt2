(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.569500257354913497209736306103877723217010498046875p-111 {- 2564801146810990 -111 (-6.0455e-034)}
; Y = 1.711639641190071170484543472412042319774627685546875p302 {+ 3204940022885678 302 (1.39467e+091)}
; -1.569500257354913497209736306103877723217010498046875p-111 < 1.711639641190071170484543472412042319774627685546875p302 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010000 #b1001000111001010110001001101010001100111001001101110)))
(assert (= y (fp #b0 #b10100101101 #b1011011000101110000000111111100101110010110100101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
