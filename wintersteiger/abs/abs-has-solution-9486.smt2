(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.142997868063412969519276884966529905796051025390625p-622 {+ 644005145325162 -622 (6.56732e-188)}
; 1.142997868063412969519276884966529905796051025390625p-622 | == 1.142997868063412969519276884966529905796051025390625p-622
; [HW: 1.142997868063412969519276884966529905796051025390625p-622] 

; mpf : + 644005145325162 -622
; mpfd: + 644005145325162 -622 (6.56732e-188) class: Pos. norm. non-zero
; hwf : + 644005145325162 -622 (6.56732e-188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010001 #b0010010010011011100000100001111010111010111001101010)))
(assert (= r (fp #b0 #b00110010001 #b0010010010011011100000100001111010111010111001101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
