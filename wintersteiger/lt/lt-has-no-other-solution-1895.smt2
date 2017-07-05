(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1185554391518535144456336638540960848331451416015625p-815 {+ 533926231587033 -815 (5.11931e-246)}
; Y = -1.0772713260763195908253919697017408907413482666015625p948 {- 347999115323737 948 (-2.56307e+285)}
; 1.1185554391518535144456336638540960848331451416015625p-815 < -1.0772713260763195908253919697017408907413482666015625p948 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010000 #b0001111001011001101001100011010111101011100011011001)))
(assert (= y (fp #b1 #b11110110011 #b0001001111001000000011011011101001101010100101011001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
