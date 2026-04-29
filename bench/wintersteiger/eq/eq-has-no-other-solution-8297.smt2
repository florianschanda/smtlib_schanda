(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2404512355677066448578216295572929084300994873046875p742 {- 1082896094903499 742 (-2.8697e+223)}
; Y = -1.464510794683644423486157393199391663074493408203125p-952 {- 2091970641846834 -952 (-3.84713e-287)}
; -1.2404512355677066448578216295572929084300994873046875p742 = -1.464510794683644423486157393199391663074493408203125p-952 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011100101 #b0011110110001110001101100101000100001011110011001011)))
(assert (= y (fp #b1 #b00001000111 #b0111011011101010001011011110111111001110001000110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
