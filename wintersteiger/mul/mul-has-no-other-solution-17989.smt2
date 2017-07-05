(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.42588743708120713193920892081223428249359130859375p155 {+ 1918026502940700 155 (6.5123e+046)}
; Y = -1.5473032458841486924683295001159422099590301513671875p744 {- 2464834694222515 744 (-1.43183e+224)}
; 1.42588743708120713193920892081223428249359130859375p155 * -1.5473032458841486924683295001159422099590301513671875p744 == -1.1031401298305907321406493792892433702945709228515625p900
; [HW: -1.1031401298305907321406493792892433702945709228515625p900] 

; mpf : - 464501850271993 900
; mpfd: - 464501850271993 900 (-9.32453e+270) class: Neg. norm. non-zero
; hwf : - 464501850271993 900 (-9.32453e+270) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011010 #b0110110100000110111101011000011000001010100000011100)))
(assert (= y (fp #b1 #b11011100111 #b1000110000011100000100001100011000010001001010110011)))
(assert (= r (fp #b1 #b11110000011 #b0001101001100111011001000011110010000111000011111001)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
