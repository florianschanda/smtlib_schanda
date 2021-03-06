(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9714645048219117118293297608033753931522369384765625p987 {+ 4375087181919625 987 (2.57866e+297)}
; Y = 1.0366627229350033889687665578094311058521270751953125p295 {+ 165114225348469 295 (6.59912e+088)}
; Z = -0.8381438212444136670598027194500900804996490478515625p-1022 {- 3774664201039225 -1023 (-1.86493e-308)}
; 1.9714645048219117118293297608033753931522369384765625p987 x 1.0366627229350033889687665578094311058521270751953125p295 -0.8381438212444136670598027194500900804996490478515625p-1022 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011010 #b1111100010110001111001011101010101101111010110001001)))
(assert (= y (fp #b0 #b10100100110 #b0000100101100010101110100110101111111100111101110101)))
(assert (= z (fp #b1 #b00000000000 #b1101011010010000100101111110110110010110110101111001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
