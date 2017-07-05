(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.556498920644145744773823025752790272235870361328125p-239 {- 2506248331645058 -239 (-1.76189e-072)}
; Y = 1.816004762041889986079468144453130662441253662109375p-178 {+ 3674958742264406 -178 (4.73999e-054)}
; -1.556498920644145744773823025752790272235870361328125p-239 > 1.816004762041889986079468144453130662441253662109375p-178 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010000 #b1000111001110110101101101001100001101101000010000010)))
(assert (= y (fp #b0 #b01101001101 #b1101000011100101101100000010011001011001101001010110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
