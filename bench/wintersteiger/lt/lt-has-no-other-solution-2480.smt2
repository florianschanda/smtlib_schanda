(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.808858778093684005483510190970264375209808349609375p673 {- 3642776091618070 673 (-7.08911e+202)}
; Y = 1.9476757982712997741003846385865472257137298583984375p248 {+ 4267952371962663 248 (8.80959e+074)}
; -1.808858778093684005483510190970264375209808349609375p673 < 1.9476757982712997741003846385865472257137298583984375p248 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100000 #b1100111100010001010111100110111011111110101100010110)))
(assert (= y (fp #b0 #b10011110111 #b1111001010011010111000011001000011001001001100100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
