(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.82695103342470144269782394985668361186981201171875p448 {- 3724256365985132 448 (-1.3279e+135)}
; Y = 1.9497305363091210761439242560300044715404510498046875p-177 {+ 4277206089424139 -177 (1.01781e-053)}
; -1.82695103342470144269782394985668361186981201171875p448 = 1.9497305363091210761439242560300044715404510498046875p-177 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111111 #b1101001110110011000100000001101111110011110101101100)))
(assert (= y (fp #b0 #b01101001110 #b1111001100100001100010100101100101110101110100001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
