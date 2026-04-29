(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.506534874509443344692272148677147924900054931640625p885 {+ 2281230272090890 885 (3.8862e+266)}
; 1.506534874509443344692272148677147924900054931640625p885 S == 1.7358196188022783079674127293401397764682769775390625p442
; [HW: 1.7358196188022783079674127293401397764682769775390625p442] 

; mpf : + 3313836961049841 442
; mpfd: + 3313836961049841 442 (1.97135e+133) class: Pos. norm. non-zero
; hwf : + 3313836961049841 442 (1.97135e+133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101110100 #b1000000110101100010001010000000001001101001100001010)))
(assert (= r (fp #b0 #b10110111001 #b1011110001011110101011001010111010000010110011110001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
