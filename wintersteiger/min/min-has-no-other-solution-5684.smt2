(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2951027098674521287335892338887788355350494384765625p59 {- 1329024454195081 59 (-7.46576e+017)}
; Y = -1.124049892818872908861749237985350191593170166015625p641 {- 558671051074426 641 (-1.02568e+193)}
; -1.2951027098674521287335892338887788355350494384765625p59 m -1.124049892818872908861749237985350191593170166015625p641 == -1.124049892818872908861749237985350191593170166015625p641
; [HW: -1.124049892818872908861749237985350191593170166015625p641] 

; mpf : - 558671051074426 641
; mpfd: - 558671051074426 641 (-1.02568e+193) class: Neg. norm. non-zero
; hwf : - 558671051074426 641 (-1.02568e+193) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111010 #b0100101110001011110110011110011111010111011110001001)))
(assert (= y (fp #b1 #b11010000000 #b0001111111000001101110111101100010111010101101111010)))
(assert (= r (fp #b1 #b11010000000 #b0001111111000001101110111101100010111010101101111010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
