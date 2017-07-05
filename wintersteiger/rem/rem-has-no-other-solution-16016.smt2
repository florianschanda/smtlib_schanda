(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0873164296332920031318280962295830249786376953125p629 {+ 393238239959816 629 (2.42227e+189)}
; Y = 1.149557451757155401850241105421446263790130615234375p-679 {+ 673546884004006 -679 (4.58315e-205)}
; 1.0873164296332920031318280962295830249786376953125p629 % 1.149557451757155401850241105421446263790130615234375p-679 == 1.33116627345317173336525229387916624546051025390625p-680
; [HW: 1.33116627345317173336525229387916624546051025390625p-680] 

; mpf : + 1491440305721380 -680
; mpfd: + 1491440305721380 -680 (2.6536e-205) class: Pos. norm. non-zero
; hwf : + 1491440305721380 -680 (2.6536e-205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110100 #b0001011001011010010111101001100110101101101100001000)))
(assert (= y (fp #b0 #b00101011000 #b0010011001001001011001011010110000101011100010100110)))
(assert (= r (fp #b1 #b00101010110 #xef96f67ca4250)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
