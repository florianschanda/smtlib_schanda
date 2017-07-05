(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1924196363462222780782440167968161404132843017578125p999 {+ 866581002547613 999 (6.38844e+300)}
; Y = -1.7961122722855662470209381353924982249736785888671875p140 {- 3585370932810355 140 (-2.50342e+042)}
; Z = 1.871760357720813061632725293748080730438232421875p273 {+ 3926059622187824 273 (2.84079e+082)}
; 1.1924196363462222780782440167968161404132843017578125p999 x -1.7961122722855662470209381353924982249736785888671875p140 1.871760357720813061632725293748080730438232421875p273 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100110 #b0011000101000010011010011100110100110111000110011101)))
(assert (= y (fp #b1 #b10010001011 #b1100101111001110000000111000110101101001001001110011)))
(assert (= z (fp #b0 #b10100010000 #b1101111100101011101011111101001001011100001100110000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
