(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.25550349406116179551418099435977637767791748046875p794 {+ 1150685440645708 794 (1.30808e+239)}
; Y = 1.1346122883791018853827381462906487286090850830078125p937 {+ 606239851783613 937 (1.31812e+282)}
; Z = -1.2407151927391051327020932149025611579418182373046875p-623 {- 1084084852322251 -623 (-3.56439e-188)}
; 1.25550349406116179551418099435977637767791748046875p794 x 1.1346122883791018853827381462906487286090850830078125p937 -1.2407151927391051327020932149025611579418182373046875p-623 == +oo
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
(assert (= x (fp #b0 #b11100011001 #b0100000101101000101011010100111100000001101001001100)))
(assert (= y (fp #b0 #b11110101000 #b0010001001110101111100110111000000111010010110111101)))
(assert (= z (fp #b1 #b00110010000 #b0011110110011111100000101100100001110110111111001011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
