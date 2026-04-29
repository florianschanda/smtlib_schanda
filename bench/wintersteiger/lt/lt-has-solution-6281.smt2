(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6811807008532559937208361589000560343265533447265625p263 {- 3067765150534697 263 (-2.49174e+079)}
; Y = 1.6186721550553475612588272269931621849536895751953125p-844 {+ 2786251686971765 -844 (1.37988e-254)}
; -1.6811807008532559937208361589000560343265533447265625p263 < 1.6186721550553475612588272269931621849536895751953125p-844 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000110 #b1010111001100001110110111100000011010100110000101001)))
(assert (= y (fp #b0 #b00010110011 #b1001111001100001010011000110000011101000100101110101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
