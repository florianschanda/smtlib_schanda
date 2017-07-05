(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.52452410455490738883099766098894178867340087890625p-953 {+ 2362246561820324 -953 (2.00239e-287)}
; 1.52452410455490738883099766098894178867340087890625p-953 S == 1.7461524014557878725639739059261046350002288818359375p-477
; [HW: 1.7461524014557878725639739059261046350002288818359375p-477] 

; mpf : + 3360371677157887 -477
; mpfd: + 3360371677157887 -477 (4.47481e-144) class: Pos. norm. non-zero
; hwf : + 3360371677157887 -477 (4.47481e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000110 #b1000011001000111001101100011001100000110111010100100)))
(assert (= r (fp #b0 #b01000100010 #b1011111100000011110110000000001000010101100111111111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
