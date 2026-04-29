(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.884195590513816132016700066742487251758575439453125p584 {- 3982062931960658 584 (-1.19301e+176)}
; Y = -1.8490360725295140742474586659227497875690460205078125p-641 {- 3823718539868029 -641 (-2.02637e-193)}
; -1.884195590513816132016700066742487251758575439453125p584 < -1.8490360725295140742474586659227497875690460205078125p-641 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000111 #b1110001001011010101001000110100010000110001101010010)))
(assert (= y (fp #b1 #b00101111110 #b1101100101011010011011011001010010100011011101111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
