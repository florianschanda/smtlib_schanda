(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.882173175142432430817507338360883295536041259765625p-907 {+ 3972954782847706 -907 (1.73962e-273)}
; Y = -1.2809180334091203601332153994007967412471771240234375p-557 {- 1265142350582967 -557 (-2.71527e-168)}
; 1.882173175142432430817507338360883295536041259765625p-907 m -1.2809180334091203601332153994007967412471771240234375p-557 == -1.2809180334091203601332153994007967412471771240234375p-557
; [HW: -1.2809180334091203601332153994007967412471771240234375p-557] 

; mpf : - 1265142350582967 -557
; mpfd: - 1265142350582967 -557 (-2.71527e-168) class: Neg. norm. non-zero
; hwf : - 1265142350582967 -557 (-2.71527e-168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110100 #b1110000111010110000110011110100010100101001011011010)))
(assert (= y (fp #b1 #b00111010010 #b0100011111101010001111101000011001011001010010110111)))
(assert (= r (fp #b1 #b00111010010 #b0100011111101010001111101000011001011001010010110111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
