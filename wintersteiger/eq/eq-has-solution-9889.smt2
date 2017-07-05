(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1120498447314355328074952922179363667964935302734375p451 {+ 504627638979415 451 (6.46625e+135)}
; Y = 1.321912918709766682212602972867898643016815185546875p-655 {+ 1449766900747054 -655 (8.84211e-198)}
; 1.1120498447314355328074952922179363667964935302734375p451 = 1.321912918709766682212602972867898643016815185546875p-655 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000010 #b0001110010101111010011000111001010100100101101010111)))
(assert (= y (fp #b0 #b00101110000 #b0101001001101000111000101001001000000100101100101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
